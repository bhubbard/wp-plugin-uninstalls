-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_2fa_settings_endpoint', 'woocommerce_queue_flush_rewrite_rules');

