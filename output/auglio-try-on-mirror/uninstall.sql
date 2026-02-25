-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auglio_try_on_mirror_version', 'auglio_installation_id', 'auglio_settings', 'auglio_api', 'auglio_product_feed');
DELETE FROM wp_options WHERE option_name LIKE 'auglio_%';

