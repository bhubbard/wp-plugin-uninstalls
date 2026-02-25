-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redistats_property_id', 'redistats_global_id', 'redistats_verification', 'redistats_status', 'redistats_api_key', 'redistats_email');

