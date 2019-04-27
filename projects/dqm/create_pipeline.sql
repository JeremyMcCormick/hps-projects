CREATE DATABASE dqm;
USE dqm;

CREATE TABLE pipeline ( id INT AUTO_INCREMENT, run_number INT NOT NULL, file_seq INT NOT NULL, evio_file_path VARCHAR(512) NOT NULL, batch_id INT, dqm_file_path VARCHAR(512), aggregated TINYINT(1) DEFAULT 0, error_message TEXT, PRIMARY KEY(id) );

CREATE USER 'dqm-user'@'localhost' IDENTIFIED BY '12345';

GRANT DELETE, INSERT, SELECT, UPDATE ON pipeline to 'dqm-user'@'localhost';
