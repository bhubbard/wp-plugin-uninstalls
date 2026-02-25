-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_customize_page_title', 'wp_customize_page_name', 'wp_customize_page_id', 'wpcustomize_admin_page_title', 'wpcustomize_admin_logo_image_url', 'wpcustomize_admin_logo_link_url', 'wpcustomize_admin_logo_title', 'wpcustomize_admin_logo_width', 'wpcustomize_admin_logo_height', 'wpcustomize_admin_logo_area_width', 'wpcustomize_admin_logo_area_height', 'wpcustomize_admin_bgcolor', 'wpcustomize_admin_linkcolor', 'wpcustomize_admin_linkhovercolor', 'wpcustomize_admin_loginstyles', 'wpcustomize_admin_footer_contents', 'wpcustomize_hide_register_forgot_links', 'wpcustomize_hide_back_link', 'wpcustomize_show_privacy_policy_link', 'wpcustomize_remember_me_by_default', 'wpcustomize_custom_error_message', 'wpcustomize_remove_login_shake', 'wpcustomize_admin_login_redirect', 'wpcustomize_admin_login_redirect_url', 'wpcustomize_admin_login_background_url', 'wpcustomize_admin_login_background_repeat', 'wpcustomize_admin_login_background_position', 'wpcustomize_admin_login_background_attachment', 'wpcustomize_admin_login_background_size', 'field_name_username', 'field_name_password', 'wpcustomize_admin_logo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

