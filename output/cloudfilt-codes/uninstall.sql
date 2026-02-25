-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%restrict';
DELETE FROM wp_options WHERE option_name LIKE '%exclude_options';
DELETE FROM wp_options WHERE option_name LIKE '%key_front';
DELETE FROM wp_options WHERE option_name LIKE '%key_back';
DELETE FROM wp_options WHERE option_name LIKE '%site_id';

