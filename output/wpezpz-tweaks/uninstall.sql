-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpezpz_backups', 'wpezpz_dashboard_widgets', 'default_post_edit_rows', 'wpezpz_version', 'wpezpz_tweaks_install_time');
DELETE FROM wp_options WHERE option_name LIKE '%-customizing-branding';
DELETE FROM wp_options WHERE option_name LIKE '%-performance';
DELETE FROM wp_options WHERE option_name LIKE '%-security';
DELETE FROM wp_options WHERE option_name LIKE '%-admin_colors';
DELETE FROM wp_options WHERE option_name LIKE '%-settings';
DELETE FROM wp_options WHERE option_name LIKE '%_fake-meta';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'ezpz_tweaks_review_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'ezpz_tweaks_review_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'ezpz_tweaks_review_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'ezpz_tweaks_review_notice_dismissed');

