class Html:
    def __init__(self, content):
        self.content = content

    def render(self):             
        raise NotImplementedError("Subclass must implement render method")


class Heading(Html):
    def render(self):
        return f'<h1>{self.content}</h1>'


class Div(Html):
    def render(self):
        return f'<div>{self.content}</div>'

class P(Html):
    def render(self):
        return f'<p>{self.content}</p>'

tags = [Div('Some content'), Heading('My Amazing Heading'), Div('Another div'), P('More and more content')]

for tag in tags:
    print(tag.render())