-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_api_enabled', 'woocommerce_snappic_settings', '_snappic_activation_redirect');

