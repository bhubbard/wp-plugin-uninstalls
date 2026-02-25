-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fcb-initial-save-version', 'fcb-install-date', 'fcb-alreadyRated', 'fcb-installDate', 'fcb-ratingDiv', 'fcb-v', 'fcb-type');

