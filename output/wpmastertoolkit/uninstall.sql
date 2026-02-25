-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmastertoolkit_credentials_tab', 'wpmastertoolkit_apple_touch_icon', 'woocommerce_cart_redirect_after_add', 'woocommerce_enable_ajax_add_to_cart', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_use_wp_submenu';
DELETE FROM wp_options WHERE option_name LIKE '%_opt_in';
DELETE FROM wp_options WHERE option_name LIKE '%_promot';
DELETE FROM wp_options WHERE option_name LIKE '%update_plugins';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_debug_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_move_login_url';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'code_snippet', 'code_snippet_error', 'snippet_type', 'snippet_status', 'WPMastertoolkit_open_new_tab_options', 'WPMastertoolkit_open_new_tab', 'wpmastertoolkit_external_permalink', 'WPMastertoolkit_last_login_timestamp', 'content_type', 'wpmastertoolkit_temporary_login', 'wpmtk_temporary_login_expiration', 'wpmtk_connexion_link', 'wpmtk_login_token', 'wpmtk_temporary_login_validity', 'wpmtk_protect_other_admin_users');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'code_snippet', 'code_snippet_error', 'snippet_type', 'snippet_status', 'WPMastertoolkit_open_new_tab_options', 'WPMastertoolkit_open_new_tab', 'wpmastertoolkit_external_permalink', 'WPMastertoolkit_last_login_timestamp', 'content_type', 'wpmastertoolkit_temporary_login', 'wpmtk_temporary_login_expiration', 'wpmtk_connexion_link', 'wpmtk_login_token', 'wpmtk_temporary_login_validity', 'wpmtk_protect_other_admin_users');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'code_snippet', 'code_snippet_error', 'snippet_type', 'snippet_status', 'WPMastertoolkit_open_new_tab_options', 'WPMastertoolkit_open_new_tab', 'wpmastertoolkit_external_permalink', 'WPMastertoolkit_last_login_timestamp', 'content_type', 'wpmastertoolkit_temporary_login', 'wpmtk_temporary_login_expiration', 'wpmtk_connexion_link', 'wpmtk_login_token', 'wpmtk_temporary_login_validity', 'wpmtk_protect_other_admin_users');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'code_snippet', 'code_snippet_error', 'snippet_type', 'snippet_status', 'WPMastertoolkit_open_new_tab_options', 'WPMastertoolkit_open_new_tab', 'wpmastertoolkit_external_permalink', 'WPMastertoolkit_last_login_timestamp', 'content_type', 'wpmastertoolkit_temporary_login', 'wpmtk_temporary_login_expiration', 'wpmtk_connexion_link', 'wpmtk_login_token', 'wpmtk_temporary_login_validity', 'wpmtk_protect_other_admin_users');

