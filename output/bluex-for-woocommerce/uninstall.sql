-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_correios_autofill_addresses_db_version', 'woocommerce_correios-integration_settings', 'woocommerce_correios_version', 'woocommerce_correios_settings', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bluex_zone_check_dismissed', '_correios_tracking_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('bluex_zone_check_dismissed', '_correios_tracking_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('bluex_zone_check_dismissed', '_correios_tracking_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bluex_zone_check_dismissed', '_correios_tracking_code');

