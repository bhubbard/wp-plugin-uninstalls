-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('complete_link_mgr_activation_time', 'complete_link_mgr_review_notice_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode');

