-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7af_mail_notify_option', 'cf7af_total', 'cf7af_smtp_option', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7af_form_id', 'cf7af_email', 'cf7af_ip_address', 'number_sentmail', 'number_fail_count', 'cf7af_abandoned_specific_field', 'cf7af_form_data', 'cf7af_page_url', 'cf7af_enable_abandoned', 'cf7af_abandoned_email', 'cf7af_mail_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7af_form_id', 'cf7af_email', 'cf7af_ip_address', 'number_sentmail', 'number_fail_count', 'cf7af_abandoned_specific_field', 'cf7af_form_data', 'cf7af_page_url', 'cf7af_enable_abandoned', 'cf7af_abandoned_email', 'cf7af_mail_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7af_form_id', 'cf7af_email', 'cf7af_ip_address', 'number_sentmail', 'number_fail_count', 'cf7af_abandoned_specific_field', 'cf7af_form_data', 'cf7af_page_url', 'cf7af_enable_abandoned', 'cf7af_abandoned_email', 'cf7af_mail_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7af_form_id', 'cf7af_email', 'cf7af_ip_address', 'number_sentmail', 'number_fail_count', 'cf7af_abandoned_specific_field', 'cf7af_form_data', 'cf7af_page_url', 'cf7af_enable_abandoned', 'cf7af_abandoned_email', 'cf7af_mail_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%abandoned_specific_field';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%abandoned_specific_field';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%abandoned_specific_field';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%abandoned_specific_field';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%enable_abandoned';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%enable_abandoned';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%enable_abandoned';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%enable_abandoned';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%abandoned_email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%abandoned_email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%abandoned_email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%abandoned_email';

