-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woolentor_others_tabs', 'evercompare_do_activation_redirect', 'woocommerce_weight_unit', 'evercompare_installed', 'evercompare_version', 'ever_compare_table_settings_tabs', 'ever_compare_settings_tabs', 'ever_compare_style_tabs');

