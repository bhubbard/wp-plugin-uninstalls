-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epassc_api_key', 'epassc_org_id', 'epassc_next_refresh', 'epass_next_refresh');

