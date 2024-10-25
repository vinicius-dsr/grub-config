#!/bin/bash

# Script para configurar o GRUB e detectar o Windows 10 no boot

echo "Atualizando pacotes..."
sudo apt update

echo "Instalando os-prober..."
sudo apt install -y os-prober

echo "Configurando GRUB para habilitar o os-prober e definir o tempo de espera para 10 segundos..."
# Adiciona ou modifica as opções de configuração do GRUB
if grep -q "^GRUB_TIMEOUT=" /etc/default/grub; then
    sudo sed -i 's/^GRUB_TIMEOUT=.*/GRUB_TIMEOUT=10/' /etc/default/grub
else
    echo "GRUB_TIMEOUT=10" | sudo tee -a /etc/default/grub
fi

if ! grep -Fxq "GRUB_DISABLE_OS_PROBER=false" /etc/default/grub; then
    echo "GRUB_DISABLE_OS_PROBER=false" | sudo tee -a /etc/default/grub
else
    echo "A opção GRUB_DISABLE_OS_PROBER já está configurada."
fi

echo "Atualizando o GRUB para aplicar as mudanças..."
sudo update-grub

echo "Processo concluído. Reinicie o sistema para que as mudanças tenham efeito."
#!/bin/bash

# Script para configurar o GRUB e detectar o Windows 10 no boot

echo "Atualizando pacotes..."
sudo apt update

echo "Instalando os-prober..."
sudo apt install -y os-prober

echo "Configurando GRUB para habilitar o os-prober e definir o tempo de espera para 10 segundos..."
# Adiciona ou modifica as opções de configuração do GRUB
if grep -q "^GRUB_TIMEOUT=" /etc/default/grub; then
    sudo sed -i 's/^GRUB_TIMEOUT=.*/GRUB_TIMEOUT=10/' /etc/default/grub
else
    echo "GRUB_TIMEOUT=10" | sudo tee -a /etc/default/grub
fi

if ! grep -Fxq "GRUB_DISABLE_OS_PROBER=false" /etc/default/grub; then
    echo "GRUB_DISABLE_OS_PROBER=false" | sudo tee -a /etc/default/grub
else
    echo "A opção GRUB_DISABLE_OS_PROBER já está configurada."
fi

echo "Atualizando o GRUB para aplicar as mudanças..."
sudo update-grub

echo "Processo concluído. Reinicie o sistema para que as mudanças tenham efeito."
