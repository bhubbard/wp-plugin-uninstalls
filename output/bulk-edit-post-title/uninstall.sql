-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bept_allow_tracking', 'bulk_edit_post_title_action', 'bulk_edit_post_title_ids', 'bept_tracking_dismissed');

