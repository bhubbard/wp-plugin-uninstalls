-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('earthr_token', 'woocommerce_default_country', 'earthr_action', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_postcode', 'earthr_show', 'earthr_checkbox_style', 'earthr_checkbox_label', 'earthr_palette', 'earthr_fee_name', 'earthr-activation-notice');

