# Formação Docker Fundamentals

## Desafio de Projeto: Definição de um Cluster Swarm Local com Vagrant

### Descrição

Neste desafio de projeto iremos criar um Cluster Swarm local, utilizando máquinas virtuais, além, de aplicar nossos conhecimentos em Vagrant. Também vamos aprender uma forma de evitar as implementações manualmente, melhorando o desempenho dos desenvolvedores.

### PASSO A PASSO:

  1. Criar um Vagrantfile com as definições de 4 máquinas virtuais. Sendo uma máquina com o nome de master e as outras com os nomes de node01, node02 e node03; 
  2. Cada máquina virtual deverá ter um IP fixo; 
  3. Todas as MV deverão possuir o Docker pré-instalado; 
  4. A máquina com o nome de master deverá ser o nó manager do cluster. 
  5. As demais máquinas deverão ser incluídas no cluster Swarm como Workers. 
