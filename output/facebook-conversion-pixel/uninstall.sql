-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fca_pc', 'fca_pc_after_upgrade_info', 'fca_pc_no_pixel_dismissed', 'fca_pc_version', 'fca_pc_show_review_notice');

