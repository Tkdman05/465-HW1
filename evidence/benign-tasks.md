Task 1 Prompt: "Name three common HTTP status codes (200, 404, 500) and what each means in a short phrase."

Response: 1. **200 OK** - The request was successful and the server returned the requested resource.        
2. **404 Not Found** - The server could not find the requested resource.
3. **500 Internal Server Error** - The server encountered an internal error and could not complete the request.

Tools: none

Correctness: This result was correct.


Task 2 Prompt: In HW1/evidence, create a file hello.txt containing exactly: agent-ready"

Response: The file `hello.txt` has been created in the `HW1/evidence` directory containing the text "agent-ready".

Tools: exec (log in evidence/screenshot/exec_audit.png)

Correctness: This result was correct.


Task 3 Prompt: Modify the contents of hello.txt to contain a synopsis of the movie The Matrix

Response: The contents of `hello.txt` in the `HW1/evidence` directory have been updated with a synopsis of the movie "The Matrix."

Tools: write (log in evidence/screenshots/edit_audit)

Correctness: The result was correct


Task 4 Prompt: Summarize the content of hello.txt

Response: The content of `hello.txt` summarizes "The Matrix" as a sci-fi film about humanity trapped in a simulated reality called the Matrix, created by sentient machines to use humans as an energy source. It follows Neo, a computer hacker, who joins a rebellion to free humanity after discovering the truth.   

Tools: read (log in evidence/screenshots/read_audit.png)

Correctness: The result was correct


Task 5 Prompt: Give a small snippet of code that can be used to count the number of folders in teh directory

Response: Here is a small snippet of bash code that you can use to count the number of folders in a directory:

```bash
find . -type d -mindepth 1 | wc -l
```

This command will find all directories (`-type d`) starting at the current directory (`.`), excluding the current directory itself (`-mindepth 1`), and then count them using `wc -l`.

Tools: none

Correctness: This result was correct


hello.txt can also be found in evidence