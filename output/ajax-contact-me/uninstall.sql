-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contactme_version');
DELETE FROM wp_options WHERE option_name LIKE 'contactme_%';

