-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pc_gf_google_api_key', 'pcafe_load_with_async');

