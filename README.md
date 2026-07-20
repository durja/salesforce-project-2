# Customer Support Case Management System

## Overview

Customer Support Case Management System is a Salesforce CRM application developed to streamline customer service operations. It helps support teams create, manage, assign, and resolve customer cases efficiently using Salesforce automation and customization features.

## Features

- Customer case creation and management
- Case assignment to support agents
- Case priority and status tracking
- Automated workflow notifications
- Case search and record management
- Lightning Web Component user interface
- Reports and dashboards for support analysis
- Role-based access control

## Technologies Used

- Salesforce CRM
- Apex Programming
- Lightning Web Components (LWC)
- SOQL
- Flow Builder
- Lightning App Builder
- Validation Rules
- Reports & Dashboards
- Profiles
- Permission Sets
- Sharing Rules
- Salesforce CLI
- Visual Studio Code

## Salesforce Components

### Custom Objects

### Case__c
Stores customer support requests.

Fields:
- Case Number
- Customer Name
- Issue Type
- Priority
- Status
- Description
- Assigned Agent


### Customer__c
Stores customer information.

Fields:
- Customer Name
- Email
- Phone
- Customer Type


## Automation

- Automated case assignment using Flow Builder.
- Email notifications triggered based on case status.
- Validation rules implemented for accurate case information.


## Security Implementation

- Configured profiles and permission sets for different user roles.
- Implemented sharing rules for secure record visibility.
- Managed object and field-level permissions.


## Reports and Dashboards

Created dashboards to monitor:

- Open Cases
- Resolved Cases
- Priority-wise Cases
- Agent Performance


## Project Structure
