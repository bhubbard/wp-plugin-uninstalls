-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('topdawg_merchant_id', 'topdawg_api_key', 'topdawg_credentials_sent', 'topdawg_plain_api_key_temp', 'topdawg_plugin_deactivating');

