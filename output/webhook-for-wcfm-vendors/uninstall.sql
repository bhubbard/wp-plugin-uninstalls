-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcfm_webhook_set_url', 'wcfm_webhook_is_active', 'wcfm_webhook_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcfm_webhook_set_url', 'wcfm_webhook_is_active', 'wcfm_webhook_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcfm_webhook_set_url', 'wcfm_webhook_is_active', 'wcfm_webhook_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcfm_webhook_set_url', 'wcfm_webhook_is_active', 'wcfm_webhook_status');

