# robotframework_project

A short description of the project
This project is related to courses taken from Linkedin Learning called
 "Robot Framework Test Automation: Level 1 (Selenium)


---

*Documentation**: [https://a-matta.github.io/robotframework_project](https://a-matta.github.io/robotframework_project)

**Source Code**: [https://github.com/a-matta/robotframework_project](https://github.com/a-matta/robotframework_project)

---

## Development

* Requirements:
  * [Poetry](https://python-poetry.org/)
  * Python 3.12+
  * [Install Allure Report](https://allurereport.org/docs/install/)
* Clone this repository
* Create a virtual environment and activate it
  ```sh
  poetry shell
  ```
* Install the dependencies
  ```sh
  poetry install
  ```
* Install playwright dependencies
  ```sh
  playwright install
  ```
* Running the tests
  ```sh
  # Uses PyInvoke
  inv tests
  ```
* To view the allure reports.
  ```sh
  allure serve allure-results
  ```

---

This project was generated using the [playwright-python-cookiecutter](https://github.com/a-matta/playwright-python-cookiecutter) template.
