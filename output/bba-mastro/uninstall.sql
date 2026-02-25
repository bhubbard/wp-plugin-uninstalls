-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bba_admin_custom_order_fields', 'bba_token', 'bba_token_expiration', 'woocommerce_allowed_countries', 'woocommerce_bbamastro_rules_settings', 'bba_admin_custom_order_field_next_field_id', 'wc_attribute_taxonomies');

