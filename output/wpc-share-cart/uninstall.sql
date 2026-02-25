-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcss_settings', 'wpcss_localization', 'wpcss_page_id', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcss_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcss_hash_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcss_cart_%';

