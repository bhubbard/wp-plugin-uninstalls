-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('email_before_download_multi_check', 'email_before_download_multi_email', 'email_before_download_single_email', 'email_before_download_subject', 'email_before_download_expire', 'email_before_download_forbidden', 'email_before_download_html_before', 'email_before_download_html_after', 'email_before_download_link_css');
DELETE FROM wp_options WHERE option_name LIKE '%_delivery_format';
DELETE FROM wp_options WHERE option_name LIKE '%_expire';
DELETE FROM wp_options WHERE option_name LIKE '%_forbidden';
DELETE FROM wp_options WHERE option_name LIKE '%_link_format';
DELETE FROM wp_options WHERE option_name LIKE '%_link_css';
DELETE FROM wp_options WHERE option_name LIKE '%_html_before';
DELETE FROM wp_options WHERE option_name LIKE '%_html_after';
DELETE FROM wp_options WHERE option_name LIKE '%_single_email';
DELETE FROM wp_options WHERE option_name LIKE '%_multi_email';
DELETE FROM wp_options WHERE option_name LIKE '%_attachment';
DELETE FROM wp_options WHERE option_name LIKE '%_subject';
DELETE FROM wp_options WHERE option_name LIKE '%_email_from';
DELETE FROM wp_options WHERE option_name LIKE '%_from_name';
DELETE FROM wp_options WHERE option_name LIKE '%_default_cf7';
DELETE FROM wp_options WHERE option_name LIKE '%_multi_check';
DELETE FROM wp_options WHERE option_name LIKE '%_hidden_form';
DELETE FROM wp_options WHERE option_name LIKE '%_radio';
DELETE FROM wp_options WHERE option_name LIKE '%_file_thumbnail';

