-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nobsmv_enabled', 'nobsmv_custom_message', 'nobsmv_link_position');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nobsmv_access_token', '_nobsmv_recipient_email', '_nobsmv_email_headers', '_nobsmv_email_attachments', '_nobsmv_sent_timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nobsmv_access_token', '_nobsmv_recipient_email', '_nobsmv_email_headers', '_nobsmv_email_attachments', '_nobsmv_sent_timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nobsmv_access_token', '_nobsmv_recipient_email', '_nobsmv_email_headers', '_nobsmv_email_attachments', '_nobsmv_sent_timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nobsmv_access_token', '_nobsmv_recipient_email', '_nobsmv_email_headers', '_nobsmv_email_attachments', '_nobsmv_sent_timestamp');

