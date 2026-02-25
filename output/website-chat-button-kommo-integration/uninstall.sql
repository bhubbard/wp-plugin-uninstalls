-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kommoflash_db_version', 'kommoflash_toggle_public_widget');

