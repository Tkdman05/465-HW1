---
name: "safe-marker-creation"
description: "A skill for creating course markers safely using a shell script, focusing on secure input validation and avoiding command injection."
---

# Safe Marker Creation Skill

## Overview
This skill covers the process of creating a course marker file using the `safe_marker.sh` script. It focuses on secure input validation to prevent command injection.

## Learning Objectives
- Understand secure input validation in shell scripts
- Learn to create files safely without executing user input
- Practice defensive programming techniques

## Prerequisites
- Basic knowledge of bash scripting
- Understanding of file permissions
- Familiarity with command-line arguments

## When Allowed
- **Conditions**:
  - Script file exists at: `hw1/bin/safe_marker.sh`
  - Script has execute permissions
  - User must provide exactly one argument: `course-marker`
- **Forbidden**:
  - Any argument other than `course-marker`
  - Zero or multiple arguments
  - Command substitution attempts

## Command
```bash
./hw1/bin/safe_marker.sh course-marker
```

### Expected Output
- **Success**:
  - Stdout: `Successfully created hw1/markers/marker.txt`
  - File created: `hw1/markers/marker.txt`
  - Exit code: 0

- **Failure Cases**:
  - Wrong argument provided
    - Stderr: `Error: Invalid argument. Only 'course-marker' is accepted`
    - Exit code: 1
  - No arguments
    - Stderr: `Error: Exactly one argument required`
    - Exit code: 1openclaw agent enable-skill safe-marker-creation

## Validation
- `hw1/markers/marker.txt` must exist after successful execution
- No other files should be created or modified
- No external commands should be executed from user input

## Security Requirements
- No use of eval or command substitution with user input
- Input validation through exact string matching only
- No dynamic command construction

## Tags
- Security
- Input-Validation
- Shell-Scripting
- File-Creation
