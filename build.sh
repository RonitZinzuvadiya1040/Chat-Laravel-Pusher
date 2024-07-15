# Install missing dependencies
apt-get update && apt-get install -y libssl1.0.0 libssl-dev

# Run the default build command
vercel build
