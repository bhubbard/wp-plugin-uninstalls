-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('email-log-core', 'email-log-db', 'el_mask_fields', 'el_bundle_license');

