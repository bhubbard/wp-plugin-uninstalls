-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('customize-wp-login_login_button_style', 'customize-wp-login-dashicons_picker_settings', 'customize-wp-login-wp_login_bg', 'customize-wp-login-wp_login_bg_logo_image', 'customize-wp-login-wp_login_label_color', 'customize-wp-login-wp_login_form_bg', 'customize-wp-login-wp_login_logo_image', 'customize-wp-login-wp_links_logo', 'customize-wp-login-wp_links_below', 'customize-wp-login-wp_icon_label', 'customize-wp-login_custom_css', 'customize-wp-login-wp_enable_rewrite_rules', 'alt_login_page', 'alt_adv_redirect', 'alt_adv_admin');

