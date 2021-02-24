---
title: "Angular Terms Simplified"
date: 2021-02-25T03:47:21+07:00
---

# Angular Terms Simplified

I struggled learning Angular, and one of the reasons is the terminology. Hence,
I thought it would be helpful if I can summarize the understanding myself.

## *modules*

First thing first, just remember that Angular's modules are different from
Javascript's modules. They are called *ngModules*. They consist sets of related
functionality (components and services).

Have a look at [Introduction to modules](https://angular.io/guide/architecture-modules#ngmodules-and-javascript-modules).

## *components*

*components* of Angular is placed at the front of the frontend. Normally, the
place is where you handle simple logic (if something is true, it is displayed;
if something is false, it is hidden; et cetera).

Skim the official [Component Overview](https://angular.io/guide/component-overview) article
again and see if I summarized it right. 

## *services*

*services* of Angular is placed at back of the frontend. Typically, it is where
you handle complex logic (get something from here and calculate this).

Again, skim the official [Angular Dependency Injection](https://angular.io/guide/dependency-injection) article.

## *dependency injection*

Look at the [Dependency Injection in Angular](https://angular.io/guide/dependency-injection)
if you want, but should it be me, I will just summarize it as the act of passing 
initialized variables inside a constructor.

### *injectors*

*services* mainly. Ones that are passed inside constructors.

### *provider*

Ones who decide that how the *injectors* are created.

## Conclusion

The terms are simplified, but not truly simple. Take your time enjoy Angular and
its learning curve.
