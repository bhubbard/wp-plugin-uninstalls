-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scpv_custom_class', 'scpv_enable_woo', 'scpv_apply_all_tel', 'scpv_default_country', 'scpv_woo_default_country', 'scpv_cf7_use_default_class');

