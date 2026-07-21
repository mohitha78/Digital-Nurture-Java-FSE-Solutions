# Exercise 1: Mocking and Stubbing

## Objective
Learn how to use Mockito to create mock objects and stub methods for unit testing a service that depends on an external API.

## Scenario
A service depends on an external API to fetch data. Instead of calling the real API during testing, Mockito is used to create a mock object and define its behavior using stubbing.

## Concepts Used
- Mocking
- Stubbing
- Mockito
- JUnit 5
- Unit Testing

## Tools Used
- Java 17
- Apache Maven
- JUnit 5
- Mockito
- Visual Studio Code

## Project Structure
- `ExternalApi.java` – Interface representing the external API.
- `MyService.java` – Service class that uses the external API.
- `MyServiceTest.java` – JUnit test class using Mockito for mocking and stubbing.

## Files Included
- `pom.xml`
- `src/`
- `Output1.png`
- `Output2.png`

## Result
Successfully created a mock object for the external API, stubbed its method to return predefined data, and verified the service behavior using JUnit 5 and Mockito. The project built successfully with all test cases passing.
