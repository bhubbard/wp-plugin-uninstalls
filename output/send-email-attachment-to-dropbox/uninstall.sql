-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_id', '_attachment_exist', '_from', '_uid', '_message_id', '_date', 'dropbox_shareablelink', 'dropbox_file_path', '_mdrop_mail_server', '_mdrop_email', '_mdrop_password', '_mdrop_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_id', '_attachment_exist', '_from', '_uid', '_message_id', '_date', 'dropbox_shareablelink', 'dropbox_file_path', '_mdrop_mail_server', '_mdrop_email', '_mdrop_password', '_mdrop_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_id', '_attachment_exist', '_from', '_uid', '_message_id', '_date', 'dropbox_shareablelink', 'dropbox_file_path', '_mdrop_mail_server', '_mdrop_email', '_mdrop_password', '_mdrop_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_id', '_attachment_exist', '_from', '_uid', '_message_id', '_date', 'dropbox_shareablelink', 'dropbox_file_path', '_mdrop_mail_server', '_mdrop_email', '_mdrop_password', '_mdrop_token');

