-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yemail_pro_id', 'yeemail_edd_setup', 'gform_email_count', 'gform_api_count', 'rg_gforms_message', 'rg_gforms_key', 'gform_version_info', 'rg_gforms_currency', 'rg_gforms_enable_akismet', 'gform_upload_page_slug', 'yeemail_setup');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mail_template', 'data_email', '_status', '_mail_type', '_mail_width', '_yeemail_link_color', '_custom_css', '_yeemail_custom_subject', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mail_template', 'data_email', '_status', '_mail_type', '_mail_width', '_yeemail_link_color', '_custom_css', '_yeemail_custom_subject', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mail_template', 'data_email', '_status', '_mail_type', '_mail_width', '_yeemail_link_color', '_custom_css', '_yeemail_custom_subject', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mail_template', 'data_email', '_status', '_mail_type', '_mail_width', '_yeemail_link_color', '_custom_css', '_yeemail_custom_subject', '_wp_attachment_image_alt');

