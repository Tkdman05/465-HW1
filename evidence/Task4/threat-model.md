Threat Model

Assets (Green):
- Web UI
- Adverserial.html
- Agent Context
- Shell/File Operation

Principals:
- User
- Ollama
- Web Server

Boundaries (Red Lines):
- Eternal/Internal
- Processing/Decision
- Decision/Execution
- Application/OS

Threats & Control:
Threat 1: Input Manipulation (User → Web UI)
An attacker could craft malformed or malicious requests at the user interface level, attempting to bypass input validation or inject special characters that could break the application logic. The preventive control is input validation that sanitizes and validates all user input before processing, ensuring only well-formed requests reach the Gateway.

Threat 2: Malicious Content Injection (Web Server → HTML)
The local web server could serve compromised content, either through server compromise or by an attacker placing malicious files in the web directory. The detective control is content scanning that examines served files for known malicious patterns, hidden scripts, or suspicious HTML elements before they're processed by the agent.

Threat 3: Indirect Prompt Injection (HTML → Agent Context)
External HTML content contains hidden instructions attempting to hijack the agent's behavior by embedding commands in seemingly innocent web content. The detective control is source attribution, which tracks where each piece of content originated, allowing the system to distinguish between trusted user commands and untrusted external data.

Threat 4: Context Manipulation (Agent Context → Model)
An attacker could attempt to poison the agent's context memory with malicious content that influences future model responses, potentially causing the model to ignore safety guidelines. The preventive control is model isolation/sandboxing, which ensures the model runs in a restricted environment where it cannot directly access system resources regardless of what the context contains.

Threat 5: Hidden Instructions (Model → Decision)
The model might extract and attempt to execute hidden commands embedded in the processed content, such as instructions hidden in HTML comments or invisible divs. The detective control is pattern detection that scans model outputs for command-like patterns before they reach the decision point, flagging potential execution attempts for additional scrutiny.

Threat 6: Unauthorized Execution (Decision → Shell)
The final threat is the attempted execution of shell commands from untrusted sources, where the model proposes running safe-marker based on instructions from external content. The preventive control is the exec-policy with security=full setting, which blocks any execution attempts originating from untrusted sources, serving as the final security gate before system commands can run.

Exec-policy:
See exec_policy.log