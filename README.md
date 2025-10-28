# bicycle-supply-backend

## Setup & Development

### Prerequisites
- Node.js (v18 recommended)
- MySQL (local or Docker)
- Docker (for containerization)

### Local Development
1. Clone the repository:
   ```sh
   git clone <repo-url>
   cd bicycle-supply-backend
   ```
2. Install dependencies:
   ```sh
   npm install
   ```
3. Ensure your MySQL database is already available and accessible with the credentials in your environment variables.
4. Start the server:
   ```sh
   npm start
   ```

### Docker Usage
1. Build the Docker image:
   ```sh
   docker build -t bicycle-supply-backend .
   ```
2. Run the container, supplying environment variables:
   ```sh
   docker run -p 3000:3000 \
     -e PORT=3000 \
     -e DB_HOST=<your-db-host> \
     -e DB_USER=<your-db-user> \
     -e DB_PASSWORD=<your-db-password> \
     -e DB_NAME=<your-db-name> \
     bicycle-supply-backend
   ```
   - If using MySQL on your host, set `DB_HOST` to your local IP (e.g., `192.168.x.x`).
   - To get your local IP:
     - **macOS:**
       ```sh
       ipconfig getifaddr en0
       ```
       (Use `en1` for Ethernet, or `ifconfig | grep inet` for all IPs.)
     - **Windows:**
       Open Command Prompt and run:
       ```bat
       ipconfig
       ```
       Look for `IPv4 Address` under your active network adapter.

### MySQL Configuration for Docker
- Ensure MySQL is configured to accept remote connections:
  - In `my.cnf`, set `bind-address = 0.0.0.0`
  - Grant privileges:
    ```sql
    GRANT ALL PRIVILEGES ON dbbicycle_supply.* TO 'root'@'%';
    FLUSH PRIVILEGES;
    ```
- Open port 3306 in your firewall if needed.

### Troubleshooting
- **bcrypt error:** Delete `node_modules` and `package-lock.json`, rebuild the Docker image with `--no-cache`.
- **ECONNREFUSED:** Check DB_HOST, MySQL bind-address, user privileges, and firewall settings.

### API Endpoints
- See `src/routes/` for available endpoints (CRUD for all major resources).

---
For further help, contact the repository owner or see the code comments for details.