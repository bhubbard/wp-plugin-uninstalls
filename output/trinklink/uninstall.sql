-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trinklink_aff_id', 'trinklink_aff_sub', 'trinklink_source', 'trinklink_excluded');

