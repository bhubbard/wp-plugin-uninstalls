-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jpibfi_selection_options', 'jpibfi_visual_options', 'jpibfi_lightbox_options', 'jpibfi_options_version', 'jpibfi_version', 'jpibfi_pro_ad', 'jpibfi_license', 'update_plugins', '_jpibfi_activation_redirect');

