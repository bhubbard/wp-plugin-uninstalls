-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jfs_duration', 'jfs_button', 'jfs_arrows', 'jfs_image_1', 'jfs_image_2', 'jfs_image_3', 'jfs_image_4', 'jfs_image_5', 'jfs_image_6', 'jfs_image_7', 'jfs_image_8', 'jfs_image_9', 'jfs_image_10', 'jfs_opacity');

