-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('productive_global_section_following_options', 'productive_global_section_grid_options', 'productive_global_section_misc_options', 'productive_global_section_popup_options', 'active_sitewide_plugins', 'productive_global_section_sharing_options', 'productive_global_section_slider_options', 'productive_style_section_manage_cpts_options', 'productive_style_section_integration_options', '_transient_productive_style', '_transient_timeout_productive_style');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('productive_user_follow_site_1', 'productive_user_follow_site_2', 'productive_user_follow_site_3', 'productive_user_follow_site_4', 'productive_user_follow_site_5', 'productive_user_follow_site_profesion');
DELETE FROM wp_usermeta WHERE meta_key IN ('productive_user_follow_site_1', 'productive_user_follow_site_2', 'productive_user_follow_site_3', 'productive_user_follow_site_4', 'productive_user_follow_site_5', 'productive_user_follow_site_profesion');
DELETE FROM wp_termmeta WHERE meta_key IN ('productive_user_follow_site_1', 'productive_user_follow_site_2', 'productive_user_follow_site_3', 'productive_user_follow_site_4', 'productive_user_follow_site_5', 'productive_user_follow_site_profesion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('productive_user_follow_site_1', 'productive_user_follow_site_2', 'productive_user_follow_site_3', 'productive_user_follow_site_4', 'productive_user_follow_site_5', 'productive_user_follow_site_profesion');

