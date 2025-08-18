Ollama su docker:

http://host.docker.internal:11434

http://host.docker.internal:11436



Whatsapp:



\_\_n8n\_BLANK\_VALUE\_e5362baf-c777-4d57-a609-6eaf1f9e87f6

Business Account ID \*

3029616073865783



**Google Drive:**

Cliend ID:

144983259083-q2gdjrepg3g6lrl2fibo5onofa6m6pio.apps.googleusercontent.com

Client secret:

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

Chiave API:

AIzaSyCMx7bjTCwa0PQAl10QfiPb05BztMewMTg



Google AI studio:

AIzaSyB7YOJPTnoJcxoVt639mFLP6PoRZbYn\_qA





**Telegram:**

https://api.telegram.org/bot7083883971:AAHzmWAHNlS9P3D93qEBT\_AAwMqrSbCs80M/getUpdates





docker exec -it llm\_image\_recognition ollama pull llava:7b



docker exec -it llm\_text\_generation ollama pull gpt-oss:20b



docker exec -it llm\_text\_generation ollama pull gemma3:1b



llama3.1:8b-instruct-q8\_0



ollama run mixtral:8x7b









**ChatGPT**

ghp\_zzSAAsP2faANalX1pIcJ3IfnEQuIIb3tmCdM





ollama run llava:34b





**Per importare file sql su postgres:**



Supabase per inserire csv



docker cp "C:\\Users\\leonardo.bartoli.MAGLIANO\\Desktop\\n8n-vincoli\_rows.sql" self-hosted-ai-starter-kit-postgres-1:/tmp/



docker exec -it self-hosted-ai-starter-kit-postgres-1 psql -U root -d n8n -f /tmp/vincoli\_output\_02.csv



psql -U root -d n8n -f /tmp/vincoli.sql



docker exec -i self-hosted-ai-starter-kit-postgres-1 psql -U root -d n8n -c "\\COPY vincoli FROM '/tmp/n8n\_vincoli\_rows.sql' WITH (FORMAT SQL, HEADER TRUE, DELIMITER ',');"







**Inserimento righe da file SQL**



Supabase per inserire csv



DROP TABLE IF EXISTS "n8n-vincoli";



-- Crea una nuova tabella con la colonna 'id' di tipo SERIAL.

-- Questo tipo di dato assegna automaticamente un numero intero progressivo

-- a ogni nuova riga, risolvendo il problema dell'ID duplicato o non valido.

CREATE TABLE "n8n-vincoli" (

&nbsp;   id SERIAL PRIMARY KEY,

&nbsp;   foglio VARCHAR(255),

&nbsp;   mappale VARCHAR(255),

&nbsp;   paes\_interesse\_archeologico TEXT,

&nbsp;   paes\_boschi TEXT,

&nbsp;   paes\_costa TEXT,

&nbsp;   paes\_fiumi TEXT,

&nbsp;   paes\_laghi TEXT,

&nbsp;   paes\_area\_contigua\_parco TEXT,

&nbsp;   paes\_dm\_capitana TEXT,

&nbsp;   paes\_\_dm\_parco TEXT,

&nbsp;   paes\_dm\_pereta TEXT,

&nbsp;   paes\_dm\_magliano TEXT,

&nbsp;   vincolo\_idrogeologico TEXT

);



docker cp "C:\\Users\\leonardo.bartoli.MAGLIANO\\Desktop\\n8n-vincoli\_rows.sql" self-hosted-ai-starter-kit-postgres-1:/tmp/

PS C:\\Users\\leonardo.bartoli.MAGLIANO> docker exec -it self-hosted-ai-starter-kit-postgres-1 psql -U root -d n8n -f /tmp/n8n-vincoli\_rows.sql



