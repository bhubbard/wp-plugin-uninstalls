-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('itf_gt_database_options_');
DELETE FROM wp_options WHERE option_name LIKE 'itf_gt_database_options_%';

