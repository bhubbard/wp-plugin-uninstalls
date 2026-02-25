-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'blockformat_%';
DELETE FROM wp_options WHERE option_name LIKE 'adv_button_%';

