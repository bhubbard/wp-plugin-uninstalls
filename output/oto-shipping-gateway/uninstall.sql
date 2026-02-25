-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wkwptoc_oto_username', '_wkwptoc_oto_password', '_wkwptoc_store_name', '_wkwptoc_oto_access_token', '_wkwptoc_oto_webook_url', '_wkwptoc_oto_environment', '_wkwptoc_wc_api_id');

