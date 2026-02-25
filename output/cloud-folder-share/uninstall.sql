-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CFS_cloud', 'CFS_height', 'CFS_show_as');

