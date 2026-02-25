-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wava_active_flag', 'wava_merchant_key_site', 'wava_plugin_version');

