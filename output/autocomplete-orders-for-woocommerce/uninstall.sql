-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcao_autocomplete_order_status', 'aofw_autocomplete_order_status', 'wcao_auto_complete_order_for', 'aofw_auto_complete_order_for', 'aofw_installed', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages';
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

