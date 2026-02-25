-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woolentor_others_tabs', 'wishsuite_do_activation_redirect', 'woocommerce_cart_redirect_after_add', 'woocommerce_weight_unit', 'woocommerce_myaccount_page_id', 'wishsuite_installed', 'wishsuite_version', 'wishsuite_table_settings_tabs', 'wishsuite_settings_tabs', 'wishsuite_style_settings_tabs');

