sudo setenforce 0
sudo systemctl restart nginx
sudo supervisorctl stop deloyactix
sudo supervisorctl start deployactix
sudo supervisorctl reload

