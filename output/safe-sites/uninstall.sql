-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('safe_sites_force_ssl', 'auto_update_core_major', 'safe_sites_virustotal_api_key', 'jetpack_protect_active', 'wpcom_public_coming_soon', 'update_plugins', 'safe_sites-demo-block-data', 'safesites_notices', 'jetpack_is_single_user');

