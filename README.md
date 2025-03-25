# IACL
## Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões

O iacl.sh e o iacl_Ubuntu2404.sh são scripts para criação de usuarios, grupos, e suas permissões.
A diferença entre os scritps está dentro do comando "openssl passwd" no iacl.sh usa -crypt para a senha, porem quando utilizei esse script no Ubuntu 24.04 ocorreu um erro. Então no iacl_Ubuntu2404.sh, fiz a seguinte alteração.

No lugar do -crypt, substitui por -6, de acordo com tabela do passwd generate hash  
Algoritmos  
-6 = SHA-512  
-5 = SHA-256  
-1 = MD5  
 
O iacl_remove.sh é um script para desfazer as alterações, ele irá remover os usuários, pastas e grupos criados pelo iacl.sh e ou iacl_Ubuntu2404.sh
