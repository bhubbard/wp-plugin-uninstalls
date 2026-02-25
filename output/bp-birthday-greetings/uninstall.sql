-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp-dob', 'bp-dp-width', 'bp-dp-height', 'bp-dp-type');

