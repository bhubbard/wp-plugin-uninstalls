-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctcl_activate_paypal', 'ctcl_paypal_client-id', 'ctcl_paypal_color_option', 'ctcl_paypal_enlable_card', 'ctcl_currency');

