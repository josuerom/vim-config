<div align="center">
<p>
    <a>
      <img alt="Linux" src="https://img.shields.io/badge/Linux-%23.svg?style=flat-square&logo=linux&color=FCC624&logoColor=black" />
    </a>
    <a>
      <img alt="macOS" src="https://img.shields.io/badge/macOS-%23.svg?style=flat-square&logo=apple&color=000000&logoColor=white" />
    </a>
    <a>
      <img alt="Windows" src="https://img.shields.io/badge/Windows-%23.svg?style=flat-square&logo=windows&color=0078D6&logoColor=white" />
    </a>
    <a href="https://github.com/josuerom/nvim-config/network">
      <img alt="Forks" src="https://badgen.net/github/forks/josuerom/vim-config">
    </a>
    <a href="https://github.com/josuerom/nvim-config/stargazers">
      <img alt="Stars" src="https://badgen.net/github/stars/josuerom/vim-config">
    </a>
    <a href="https://github.com/neovim/neovim/releases/tag/stable">
      <img src="https://img.shields.io/badge/Neovim-0.6.1-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=green" alt="Vim version"/>
    </a>
</p>
</div>

<H1 align="center">Fantástica Instalación y Configuración de Vim para SO Linux - Abril, 2022.</H1>

<p align="center" width="0">
   <img align="center" width="645" src="https://github.com/josuerom/vim-config/blob/main/.vim/screenshot/neovim-logo-shadow.png">
</p>

<p align="center">
<img src="https://github.com/josuerom/vim-config/blob/main/.vim/screenshot/2022-02-26_18-34-31_Trim.gif" width="800">
</p>

## Introducción.
El presente proyecto describe el proceso que debes seguir para personalizar e instalar **VIM** en su versión más reciente; proyecto realizado tras la devaluación e ineficiencia de instalaciones que hay sobre vim en español para todas las distribuciones **LINUX**, gran parte de los programadores profesionales más exitosos, hoy en día utilizan este editor de texto o código muy profesional. Asimismo, éste estudio de elaboración propia revela la calidad de instalación, configuración y personalización. Para una mejor comprensión de la guía enfoquese y sobre todo descargue cada una de las herramientas inicializadas a continuación:

## Herramientas necesarias.

1. Instalar **Node.js**
2. Instalar **VIM**
3. Clonar **este repositorio**
4. Instalar el gestor de plugins **vim-plug**

**Tenga en cuenta que:** para instalar vim, si o si necesitarás utilizar todas esas 4 herramientas, para ello aquí conocerás el paso a paso para instalar cada de ellas correctamente sin errores ni falsa información, cabe mensionar que, debes manejar algunas shell o terminal como: *bash, zsh o acrility* bash en linuz ya viene instalado, por eso no será necesario explicarte cómo ejecutarlo, ni instalarlo, ni abrirlo. ¡Si estas acá metido es porque ya debes de saber abrirla tansiquiera y ejecutar uno que otro comando. Si no sabes pues te invito a mira un video en YT basada en la distribución que manejes. ¡Listo, estás preparado!.

# Paso a paso para la instalación de Vim.
## Paso No. 1. Instalar Node.js.
**Node.js** es un entorno en tiempo de ejecución multiplataforma, de código abierto, para la capa del servidor basado en el lenguaje de programación JavaScript, en pocas palabras, es un programa el cual permite interpretar o ejecutar archivos javascript y TypeScript sin necesidad de correrlo en el navegador, es por eso que Node.js integra su consola; pero esto es siempre y cuando valles a trabajar con **ALGUNOS DE ELLOS**, si tu no lo dominas o no te interesa trabajar con el *"pues no lo instales y ya"*. Por otra parte, si no lo instalas cada vez que abras neovim te saldrá un aviso en rojo pidiendote que instales Node.js, pero no te preocupes de que podrás utilizar neovim sin problema alguno. 

Para instalarlo da un [click aquí](https://nodejs.org/es/download/ "https://nodejs.org/es/download/"), este enlace te llevará directamente a su pagina oficial de descarga. O mejor ejecuta el siguiente comando en la terminal.

Para distribuciones basadas en Debian
```bash
sudo apt install nodejs npm
```  
Para distribuciones basadas en Arch
```bash
sudo pacman -S nodejs npm
```
Para distribuciones basadas en Fedora
```bash
sudo yum install nodejs
```

## Paso No. 2. Instalar Vim.
No necesitaras instalar VIM en la distribución linux que utilices porque el ya viene instalado por defecto. VIM es un editor de texto gratuito y de código abierto basado en la terminal, lo que lo hace ser un editor de texto super pero super veloz por lo que no tiene interfaz grafica. Es un clon mejorado de antiguo VI. El autor de Vim es Bram Moolenaar, derivó Vim de un puerto del editor Stevie para Amiga y fue lanzado al público en 1991. (Si usted maneja Arch Linux y no lo tienes instalado dejo el comando por acá.

Copie y pegue el comando
```bash
sudo pacman -S vim
```

## Paso No. 3. Clonar éste repositorio.
Esta es la personalización que actualmente tengo en vim, que justamente es la misma que uso para nvim:

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/vim-config/blob/main/.vim/screenshot/nvim-completo.png">
</p>

**PREGUNTA:** ¿Te gustaría tener vim como lo tengo yo?. Si tu respuesta es un **SÍ** deberás descargarte o clonar los archivos publicados en este repositorio ya que son necesarios para que tu editor **VIM** tenga una interfaz bacana y las mismas funcionalidades que manejo yo como: atajos de teclado y plugins. Para clonarlo sigue los siguientes pasos:

1. Abre la terimal.
2. Ejecuta el siguiente comando:
```bash
git clone https://github.com/josuerom/vim-config.git
```
3. Renombra la carpeta por .vim/, con el siguiente comando:
```bash
mv vim-config config-vim
```
4. Ahora, realiza dos enlaces símbolicos hacía el directorio renombrado.
```bash
ln -s .vim/ config-vim/ & ln -s .vimrc config-vim/ 
```
5. Por ultimo, copia el contenido que tiene los archivos clonados (.vimrc y .vim/), y pega aquel contenido dentro de los nuevos enlaces símbolicos creados (.vimrc y .vim/).

## Paso No. 4. Instalar el gestor de plugins VIM PLUG.
**Vim plug** es un administrador de plugins para el editor de texto vim y neovim minimalista, de código abierto creado por **junegunn** hace tiempo. Además es totalmente libre de uso. Una de sus principales y más conmovedores funcionalidades es que puedes instalar, actualizar y desinstalar complementos en paralelo. Crea clones para minimizar el uso de espacio del disco y el tiempo de descarga. Para realizar una descarga limpia y ligera, ejecuta en tu terminal el siguiente comando:
```bash or zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
``` 

Ese comando creará uno ficheros y un archivos con nombre **plug.vim** en la ruta: **HOME/.vim/autoload/plug.vim**, que nos permitirá instalar los plugins, etc... Si no ejecutas el comando no podrás obtener la misma personalización que tengo yo. 

Y ya con esto habrías terminado todo, añado captura de pantalla:

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/vim-config/blob/main/.vim/screenshot/pluginstall.png">
</p>

### ¿Atrevete a comentarme que tal te pareció esta guía de instalación o que me faltó?
¿Quieres contactarte conmigo? Pues puedes hacerlo vía email, a mi correo:
```correo
josueromram@outlook.es
```
<p align="center" width="0">
   <img align="center" width="45" src="https://github.com/josuerom/vim-config/blob/main/.vim/screenshot/neovim-mark-flat.png">
</p> 
