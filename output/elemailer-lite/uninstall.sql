-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elemailer_lite_info', 'elemailer_hide_mail_branding', 'elemailer_lite_notice_not_now_time', 'elemailer_lite_notice_never_show');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_elementor_data', '_elementor_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_elementor_data', '_elementor_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_elementor_data', '_elementor_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_elementor_data', '_elementor_template_type');

