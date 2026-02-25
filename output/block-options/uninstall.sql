-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_ek_is_styles_manager_cpt_flashed', 'editorskit-addon-template-library', 'editorskit-addon-styles-manager', 'shareablock_api_key', 'editorskit_activation_marker', 'editorskit_support_notice_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gsm_css', 'gsm_js', 'gsm_active', '_editorskit_title_hidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('gsm_css', 'gsm_js', 'gsm_active', '_editorskit_title_hidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('gsm_css', 'gsm_js', 'gsm_active', '_editorskit_title_hidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gsm_css', 'gsm_js', 'gsm_active', '_editorskit_title_hidden');

