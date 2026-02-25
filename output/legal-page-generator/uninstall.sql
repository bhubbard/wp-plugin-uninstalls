-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lpg_admin_notices', 'lpg_saving_settings', 'lpg_installed');
DELETE FROM wp_options WHERE option_name LIKE 'lpg_%';
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';

