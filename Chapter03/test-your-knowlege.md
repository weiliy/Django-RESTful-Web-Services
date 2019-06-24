## Test your knowledge
Let's see whether you can answer the following questions correctly:

### The urlpatterns list declared in the urls.py file makes it possible to:
- [ ] Route URLs to Django models
- [x] Route URLs to Django views
- [ ] Route URLs to Python primitives

### When the Django server receives an HTTP request, Django creates an instance of which of the following classes?
- [ ] django.restframework.HttpRequest
- [x] django.http.HttpRequest
- [ ] django.http.Request

### A view function has to return an instance of which of the following classes?
- [x] django.http.HttpResponse
- [ ] django.http.Response
- [ ] django.restfremework.HttpResponse

### Whenever you have to return a specific status different from the default 200 OK status, it is a good practice to use the module variables defined in which of the following modules?
- [ ] rest\_framework.HttpStatus
- [ ] django.status
- [x] rest\_framework.status

### If you want to retrieve a Toy instance whose primary key value is equal to 10 and save it in the toy variable, which line of code would you write?
- [ ] toy = Toy.get\_by(pk=10)
- [ ] toy = Toy.objects.all(pk=10)
- [x] toy = Toy.objects.get(pk=pk)
