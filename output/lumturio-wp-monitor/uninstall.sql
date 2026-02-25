-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lumturio_site_uuid', 'lumturio_site_encryption_token', 'update_plugins');

