-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ny_subscribe_theme_css', 'ny_subscribe_field_custom', 'ny_subscribe_ticked', 'links_updated_date_format', 'ny_subscribe_field_sub_form', 'ny_subscribe_css', 'ny_subscribe_spam_ip_list_remote', 'ny_subscribe_spam_ip_list_server', 'ny_subscribe_spam_email_list', 'ny_subscribe_spam_domain_list', 'ny_subscribe_wipe');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ny_subscribe_field_custom', 'first_name', 'NYSEmailSent');
DELETE FROM wp_usermeta WHERE meta_key IN ('ny_subscribe_field_custom', 'first_name', 'NYSEmailSent');
DELETE FROM wp_termmeta WHERE meta_key IN ('ny_subscribe_field_custom', 'first_name', 'NYSEmailSent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ny_subscribe_field_custom', 'first_name', 'NYSEmailSent');

