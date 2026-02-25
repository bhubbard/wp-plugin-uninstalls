-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afaq_6310_version_info', 'afaq_6310_license_key');

