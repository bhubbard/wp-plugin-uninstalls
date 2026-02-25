-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('priconix_sync_api_key', 'priconix_sync_publishable_key', 'priconix_sync_success_url', 'priconix_sync_cancel_url');

