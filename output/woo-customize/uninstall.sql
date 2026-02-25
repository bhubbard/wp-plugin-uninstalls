-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_billing_page_options', 'woo_free_page_options', 'woo_color_page_options', 'woo_customize_notice', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone', 'billing_email', 'billing_free_checkout', 'billing_virtual_checkout', 'woo_customize_default_color', 'woo_customize_add_to_cart_text');

