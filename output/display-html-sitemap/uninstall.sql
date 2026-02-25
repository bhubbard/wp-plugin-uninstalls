-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dhswp_sortorder', 'dhswp_exclude');
DELETE FROM wp_options WHERE option_name LIKE 'dhswp_active_%';
DELETE FROM wp_options WHERE option_name LIKE 'dhswp_newname_%';

