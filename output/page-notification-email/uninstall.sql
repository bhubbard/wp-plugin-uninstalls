-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pagenoemail_enabled_post_types', 'pagenoemail_email_subject', 'pagenoemail_email_message', 'pagenoemail_bcc_address');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pagenoemail_notification_email', '_pagenoemail_custom_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pagenoemail_notification_email', '_pagenoemail_custom_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pagenoemail_notification_email', '_pagenoemail_custom_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pagenoemail_notification_email', '_pagenoemail_custom_message');

