-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vc_bogo_activation_error', 'vc_bogo_enabled', 'vc_bogo_selected_products', 'vc_bogo_scope');

