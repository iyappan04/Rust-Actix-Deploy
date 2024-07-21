sudo apt update -y

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo apt install -y supervisor nginx vim build-essential postgresql

git clone https://gitlab.com/iyappank165/deployactix.git

cd deployactix/

cargo build --release

cp /home/iyappan/rustapps/deployactix/deploy/deployActix.conf /etc/supervisor/conf.d/

cp /home/iyappan/rustapps/deployactix/deploy/nginx.conf  /etc/nginx/sites-available/
 
cd /etc/nginx/sites-enabled/

ln -sf /etc/nginx/sites-available/ /etc/nginx/sites-enabled/











