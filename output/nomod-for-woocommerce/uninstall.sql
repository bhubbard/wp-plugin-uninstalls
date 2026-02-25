-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_nomod_settings', 'secret_key', 'nomod_plugin_version');
DELETE FROM wp_options WHERE option_name LIKE 'nomod_refund_blocked_%';

