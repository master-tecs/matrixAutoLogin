# SSH Login Automation for Seneca Matrix Server

## Description
The provided scripts automate the process of logging into the Seneca (Matrix) server via SSH using stored credentials. This automation simplifies the login process, enhancing user convenience and efficiency. The scripts are designed to read the username and password from a hidden credentials file and prompt the user for confirmation before initiating the SSH login process.

## Script Files

1. **matrix.sh**: 
   - Bash script for initiating the SSH login process to the Matrix server.
   - Reads username and password from a hidden credentials file.
   - Provides user prompts for login confirmation.
   - Utilizes `sshpass` for automated password authentication.

2. **login.cmd**:
   - Windows batch script for initiating the SSH login process to the Matrix server.
   - Reads username and password from a hidden credentials file.
   - Provides user prompts for login confirmation.
   - Requires PuTTY (specifically `plink`) for SSH connections.

3. **.login**: 
   - Hidden file containing the username and password for the Matrix server in the format `username:password`.

## Usage
1. Ensure `sshpass` is installed on your system (for `matrix.sh`).
2. Ensure PuTTY is installed on your system and `plink.exe` is available in the PATH (for `login.cmd`).
3. Populate the `.login` file with your Matrix server credentials in the format `username:password`.
4. Run the appropriate script (`matrix.sh` for Unix-like systems, `login.cmd` for Windows), and follow the prompts to initiate the SSH login process.

## Disclaimer
These scripts are provided as-is, without any warranty or guarantee. Use them at your own risk.

## Contribution
Feel free to fork this repository and contribute to its development. Pull requests are welcome!

## License
This project is licensed under the [MIT License](LICENSE).
