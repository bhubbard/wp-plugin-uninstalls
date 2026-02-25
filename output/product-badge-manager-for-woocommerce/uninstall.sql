-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', 'total_sales', '_stock', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', 'total_sales', '_stock', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', 'total_sales', '_stock', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', 'total_sales', '_stock', '_stock_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_news';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_news';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_news';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_news';

