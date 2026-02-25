-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_country', 'woocommerce_weight_unit', 'woocommerce_email_from_address', 'andreani_pyme_info', 'andreani_corporativo_info');

