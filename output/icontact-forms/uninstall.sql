-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%appid';
DELETE FROM wp_options WHERE option_name LIKE '%username';
DELETE FROM wp_options WHERE option_name LIKE '%password';
DELETE FROM wp_options WHERE option_name LIKE '%client_folders_info';
DELETE FROM wp_options WHERE option_name LIKE '%apiurl';
DELETE FROM wp_options WHERE option_name LIKE '%forms_index';
DELETE FROM wp_options WHERE option_name LIKE '%succesfully_connected';
DELETE FROM wp_options WHERE option_name LIKE '%connected_folder';

