const htmlHeadingGenerator = (title, heading) => {
    console.log(`<h${heading}>${title}</h${heading}>`);
}

htmlHeadingGenerator('Hello World', 2);