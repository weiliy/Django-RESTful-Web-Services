## Test your knowledge
Let's see whether you can answer the following questions correctly:

### Which of the following classes is responsible for rendering the text/html content:
- [ ] The rest\_framework.response.HtmlRenderer class
- [ ] The rest\_framework.response.TextHtmlAPIRenderer class
- [x] The rest\_framework.response.BrowsableAPIRenderer class

### By default, the browsable API uses the following web component library:
- [x] Bootstrap
- [ ] ReactJS
- [ ] AngularJS

### When we enter the URL of an existing resource in a web browser, the browsable API:
- [ ] Returns a web page with just the JSON response for an HTTP GET request to the resource
- [x] Returns a web page with a section that displays the JSON response for an HTTP GET request to the resource and diverse buttons to perform other requests to the resource
- [ ] Returns a web page with a section that displays the JSON response for an HTTP OPTIONS request to the resource and diverse buttons to perform other requests to the resource

### When we enter the URL of a non-existing resource in a web browser, the browsable API:
- [x] Renders a web page that displays an HTTP 404 not found header
- [ ] Displays a plain text message with an HTTP 404 not found error
- [ ] Renders a web page with the last toy resource that was available

### If we enter the following URL, http://localhost:8000/toys/10?format=json, and there is a toy resource whose id is equal to 10, the browsable API will display:
- [ ] The raw JSON results of an HTTP GET request to http://localhost:8000/toys/
- [x] The raw JSON results of an HTTP GET request to http://localhost:8000/toys/10
- [ ] The same web page that would be rendered if we entered http://localhost:8000/toys/10
