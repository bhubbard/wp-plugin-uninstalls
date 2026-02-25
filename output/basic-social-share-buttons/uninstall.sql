-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basic-share-buttons__sites', 'basic-share-buttons__style', 'basic-share-buttons__size');

