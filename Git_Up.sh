#!/bin/bash
clear

function titulo() {
echo "   _______     ________    _________            __  __     ______    "
echo "  /______/\   /_______/\  /________/\          /_/\/_/\   /_____/\   "
echo "  \::::__\/__ \__.::._\/  \__.::.__\/          \:\ \:\ \  \:::_ \ \  "
echo "   \:\ /____/\   \::\ \      \::\ \             \:\ \:\ \  \:(_) \ \ "
echo "    \:\|_  _\/   _\::\ \__    \::\ \    _______  \:\ \:\ \  \: ___\/ "
echo "     \:\_\ \ \  /__\::\__/\    \::\ \  /______/\  \:\_\:\ \  \ \ \   "
echo "      \_____\/  \________\/     \__\/  \__::::\/   \_____\/   \_\/   "
echo "======================================================================="
echo "|                              Qual comando?                          |"
echo "======================================================================="
echo "======================================================================="
echo "|                                                                     |"
echo "|                         [01] Permissão a pasta                      |"
echo "|                         [02] Apagar a linha de tempo .git           |"
echo "|                         [03] Iniciar uma linha de tempo             |"
echo "|                         [04] Atualizar projeto add .                |"
echo "|                                                                     |"
echo "======================================================================="
read dado

if [ "$dado" -eq 1 ];
then
	Permissao
elif [ "$dado" -eq 2 ];
then
    apaga_git
elif [ "$dado" -eq 3 ];
then
    inicio_git
else
    atualiza_git
fi

}

function /titulo() {
echo "======================================================================="
echo "|                           Concuido o envio do Git_UP                |"
echo "======================================================================="
}

function Permissao() {
sudo chown -R -v "ascoid" /Git_Up
/titulo
}

function apaga_git() {
# Apaga o .git para iniciar um novo
sudo rm -r .git
/titulo
}

function inicio_git() {
# Inicio de um nova linha de tempo
git init
git add .
echo "======================================================================="
echo "|                           Qual comentario do commit?                |"
echo "======================================================================="
read commit
echo "$commit"
git commit -m "$commit"
git branch -M main
git push -u origin main

}

function atualiza_git() {
# Atualizaçao simples de envio/atualizaçao
git add .
echo "======================================================================="
echo "|                           Qual comentario do commit?                |"
echo "======================================================================="
read commit
git commit -m "$commit"

echo "======================================================================="
echo "|                               Pasta que vc esta!                    |"
echo "======================================================================="
pwd
echo ""

echo "======================================================================="
echo "|                           Origin que esta informado                 |"
echo "======================================================================="
git remote -v 
echo ""

echo "======================================================================="
echo "|                        Qual mudar a Origin? [s] ou [n]              |"
echo "======================================================================="
read res
echo ""

if [ $res = "s" ];
then
    echo "======================================================================="
    echo "|            Qual origin? exp.git@github.com:Ascoid/Doc.git           |"
    echo "======================================================================="
    read origin
    git remote add origin "$origin"
    git push -u origin main
elif [ $res = "n" ];
then
	git push -u origin main
    /titulo
else
    echo "======================================================================="
    echo "|                          Erro na resposta!!                         |"
    echo "======================================================================="
fi
}

################# Chamado de Funcrtion ##################
titulo



