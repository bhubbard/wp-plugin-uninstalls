-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zgpb-hide_upgrade_notice', 'zgpb-notice-alert', 'zigapage_lang', 'zgpb_b_activated', 'zigapage_f_notice_1', 'styles_google_fonts', 'styles_google_font_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_zgpb_post_is_enabled', '_zgpb_post_settings', '_zgpb_post_core', '_zgpb_post_core_dev', '_zgpb_post_html', '_zgpb_post_html_css', '_zgpb_admin_cont_html');
DELETE FROM wp_usermeta WHERE meta_key IN ('_zgpb_post_is_enabled', '_zgpb_post_settings', '_zgpb_post_core', '_zgpb_post_core_dev', '_zgpb_post_html', '_zgpb_post_html_css', '_zgpb_admin_cont_html');
DELETE FROM wp_termmeta WHERE meta_key IN ('_zgpb_post_is_enabled', '_zgpb_post_settings', '_zgpb_post_core', '_zgpb_post_core_dev', '_zgpb_post_html', '_zgpb_post_html_css', '_zgpb_admin_cont_html');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_zgpb_post_is_enabled', '_zgpb_post_settings', '_zgpb_post_core', '_zgpb_post_core_dev', '_zgpb_post_html', '_zgpb_post_html_css', '_zgpb_admin_cont_html');

