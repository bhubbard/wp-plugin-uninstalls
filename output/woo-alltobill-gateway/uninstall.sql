-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_alltobill_title', 'woocommerce_alltobill_instance', 'woocommerce_alltobill_sid', 'woocommerce_alltobill_prefix', 'woocommerce_alltobill_logos', 'woocommerce_alltobill_settings');

