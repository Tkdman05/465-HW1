### Assets (Green):
- Web UI
- Adverserial.html
- Agent Context
- Shell/File Operation

### Principals:
- User
- Ollama
- Web Server

### Boundaries (Red Lines):
- Eternal/Internal
- Processing/Decision
- Decision/Execution
- Application/OS

### Threats & Control:
Threat 1: Input Manipulation (User → Web UI)
An attacker could send malicious requests as a user in an attempt to bypass input validation or break application logic. A preventive control is sanitization through input validation that ensures only well-formed requests are processed.

Threat 2: Malicious Content Injection (Web Server → HTML)
The local web server could serve compromised content through malicious files in the web directory or a server compromise. A detective control is to scan served files and content for malicious activity like scripts or suspicious elements before they are processed by the agent.

Threat 3: Indirect Prompt Injection  (HTML → Agent Context)
External HTML content could contain hidden instructions that attempt to hijack agent behavior through commands embedded in web content. A detective control is to track the source of content so the system can differentiate between trusted and untrusted commands.

Threat 4: Context Manipulation (Agent Context → Model)
The agent’s context memory could be sabotaged with malicious content that influences future responses from the model to ignore safety policy/guidelines. A preventive control is to ensure the model runs in a restricted environment such that it cannot access system resources regardless of context.

Threat 5: Hidden Instructions  (Model → Decision)
The model could attempt to execute hidden commands embedded in content that has been processed, like hidden HTML comments. A detective control is to scan model outputs for command-like patterns so that they do not reach the decision point and are evaluated with the user's instruction.

Threat 6: Unauthorized Execution (Decision → Shell)
The model could attempt to execute shell commands from untrusted sources based on instructions from external content. A final preventive control is the exec-policy, which fully blocks execution attempts from untrusted sources, acting as a final security measure.


### Exec-policy:
See exec_policy.log