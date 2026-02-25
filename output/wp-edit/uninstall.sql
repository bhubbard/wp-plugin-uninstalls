-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_edit_global', 'wp_edit_general', 'wp_edit_posts', 'jwl_toggle_wpautop_settings', 'wp_edit_editor', 'wp_edit_extras', 'wp_edit_user_dashboard_options', 'wp_edit_buttons', 'wp_edit_activation_redirect', 'wp_edit_install');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('description', '_jwl_disable_wpautop', 'aaa_wp_edit_user_meta', 'ignore_wpedit_ag_notice', 'ignore_wpedit_custom_buttons_notice', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('description', '_jwl_disable_wpautop', 'aaa_wp_edit_user_meta', 'ignore_wpedit_ag_notice', 'ignore_wpedit_custom_buttons_notice', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('description', '_jwl_disable_wpautop', 'aaa_wp_edit_user_meta', 'ignore_wpedit_ag_notice', 'ignore_wpedit_custom_buttons_notice', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('description', '_jwl_disable_wpautop', 'aaa_wp_edit_user_meta', 'ignore_wpedit_ag_notice', 'ignore_wpedit_custom_buttons_notice', 'dismissed_wp_pointers');

