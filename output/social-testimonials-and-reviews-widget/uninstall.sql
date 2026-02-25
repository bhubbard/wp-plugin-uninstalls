-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rw_apikey', 'rw_account', 'repuso_js_code', 'repuso_page_type_front-page', 'repuso_page_type_blog-index', 'repuso_page_type_pages', 'repuso_page_type_posts', 'url_itself', 'url_type', 'rw_notice_settings_dismissed_until', 'rw_notice_review_dismissed_until', 'rw_posts', 'rw_widgets', 'rw_trial');
DELETE FROM wp_options WHERE option_name LIKE 'repuso_page_show_%';
DELETE FROM wp_options WHERE option_name LIKE 'repuso_page_hide_%';
DELETE FROM wp_options WHERE option_name LIKE 'repuso_page_type_%';

