// This TypeScript code snippet is designed to trigger CodeQL warnings

class InsecureCode {
    constructor() {
        this.executeDangerousOperation();
    }

    executeDangerousOperation() {
        const userControlledInput: string = process.argv[2] || "";
        
        // Example of code that could lead to command injection
        const command = `echo ${userControlledInput}`;
        require('child_process').execSync(command);

        // Example of code that could lead to SQL injection
        const unsafeQuery = `SELECT * FROM users WHERE username = '${userControlledInput}'`;
        // Execute the query...

        // Example of potential open redirect vulnerability
        const redirectUrl = userControlledInput.startsWith('http') ? userControlledInput : '/default';
        console.log("Redirecting to:", redirectUrl);
    }
}

// Instantiate the class
const insecureCode = new InsecureCode();

