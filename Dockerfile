FROM n8nio/n8n:latest

# Installa il pacchetto a livello globale come utente root
USER root
RUN npm install -g qrcode --unsafe-perm

# Torna all'utente predefinito
USER node