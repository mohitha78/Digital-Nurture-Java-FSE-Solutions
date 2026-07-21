# Exercise 2: Verifying Interactions

## Objective
Learn how to verify interactions with mock objects using Mockito.

## Scenario
A service depends on an external API. Mockito is used to create a mock object, invoke a method on the service, and verify that the expected method on the mock object is called.

## Concepts Used
- Mockito Mocking
- Verifying Interactions
- JUnit 5
- Unit Testing

## Tools Used
- Java 17
- Apache Maven
- JUnit 5
- Mockito
- Visual Studio Code

## Files Included
- pom.xml
- src/
- Output1.png
- Output2.png

## Result
Successfully verified that the `getData()` method of the mocked `ExternalApi` was invoked using Mockito's `verify()` method. All test cases executed successfully with BUILD SUCCESS.
