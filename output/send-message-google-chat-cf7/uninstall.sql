-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpcf7_google_chat_webhook_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpcf7_google_chat_webhook_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpcf7_google_chat_webhook_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpcf7_google_chat_webhook_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpcf7_google_chat_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpcf7_google_chat_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpcf7_google_chat_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpcf7_google_chat_%';

