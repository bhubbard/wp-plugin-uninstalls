-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpchtmlp_opt_remove_table_on_uninstall', 'wpchtmlp_opt_editor_type', 'wpchtmlp_opt_editor_style', 'wpchtmlp_opt_allow_wp-admin', 'wpchtmlp_opt_filter_params', 'wpchtmlp_ignore_trailing_slash', 'WPCHTMLP_activity_log_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('WPCHTMLP_page_meta_box');
DELETE FROM wp_usermeta WHERE meta_key IN ('WPCHTMLP_page_meta_box');
DELETE FROM wp_termmeta WHERE meta_key IN ('WPCHTMLP_page_meta_box');
DELETE FROM wp_commentmeta WHERE meta_key IN ('WPCHTMLP_page_meta_box');

