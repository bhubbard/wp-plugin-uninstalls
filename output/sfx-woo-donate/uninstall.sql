-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('donate_areas', 'wanttoforgive', 'buttonlocation', 'donationplace', 'buttontitle', 'test', 'text', 'number', 'textarea', 'select', 'editor');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('donate');
DELETE FROM wp_usermeta WHERE meta_key IN ('donate');
DELETE FROM wp_termmeta WHERE meta_key IN ('donate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('donate');

