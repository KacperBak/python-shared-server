import http.server
import socketserver
import os

# Get the current working directory
current_directory = os.getcwd()

# Define the handler to serve the directory
handler = http.server.SimpleHTTPRequestHandler

# Define the port to listen on
PORT = 80

# Create the server
with socketserver.TCPServer(("", PORT), handler) as httpd:
    print(f"Serving directory '{current_directory}' at port {PORT}")
    httpd.serve_forever()

