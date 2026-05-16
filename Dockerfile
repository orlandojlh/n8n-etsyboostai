FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node

# Railway usa 5678 fijo; Render inyecta $PORT en runtime
CMD ["sh", "-c", "N8N_PORT=${PORT:-5678} n8n start"]