#!/bin/bash

case "$1" in
  baixar)
    echo "🔽 Baixando a imagem do nginx..."
    docker pull nginx
    ;;
    
  iniciar)
    echo "🚀 Iniciando o container 'meu-servidor' com nginx..."
    docker run -d --name meu-servidor -p 8080:80 nginx
    ;;
    
  listar)
    echo "📋 Listando containers em execução..."
    docker ps
    ;;
    
  parar)
    echo "🛑 Parando o container 'meu-servidor'..."
    docker stop meu-servidor
    echo "❌ Removendo o container 'meu-servidor'..."
    docker rm meu-servidor
    ;;
    
  listar-todos)
    echo "📋 Listando todos os containers (inclusive parados)..."
    docker ps -a
    ;;

  ajuda | *)
    echo "Uso: $0 {baixar|iniciar|listar|parar|listar-todos|ajuda}"
    echo ""
    echo "Comandos:"
    echo "  baixar         Baixa a imagem do Nginx"
    echo "  iniciar        Inicia o container com nome 'meu-servidor'"
    echo "  listar         Lista containers em execução"
    echo "  parar          Para e remove o container 'meu-servidor'"
    echo "  listar-todos   Lista todos os containers (ativos e inativos)"
    echo "  ajuda          Mostra esta ajuda"
    ;;
esac
