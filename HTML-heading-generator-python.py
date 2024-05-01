def heading_generator(title, heading_type):
    return f"<h{heading_type}>{title}</h{heading_type}>"


print(heading_generator("Hello", "1"))
