-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spinupwp_cf_email', 'spinupwp_cf_zone_id', 'spinupwp_cf_api_key', 'spinupwp_cf_api_key_legacy', 'spinupwp_cf_auth_type', 'spinupwp_cf_purge_enabled');

