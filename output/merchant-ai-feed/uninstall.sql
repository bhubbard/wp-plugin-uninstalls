-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('merchant_ai_active_status', 'merchant_ai_auto_sync_status');

