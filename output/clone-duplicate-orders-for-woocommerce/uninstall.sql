-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdo_wc_acf_option_fields', 'cdo_wc_clone_order_admin_notice', 'cdo_wc_activated_plugin');
DELETE FROM wp_options WHERE option_name LIKE 'cdo_wc_cloning_order_%';

