-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clonepress_roles', 'clonepress_types_enabled', 'clonepress_show_in_row_actions', 'clonepress_duplicate_label', 'clonepress_duplicate_post_status', 'clonepress_duplicate_suffix', 'clonepress_duplicate_redirect', 'clonepress_show_in_admin_bar', 'clonepress_show_in_bulk_actions', 'clonepress_show_in_metabox', 'clonepress_settings', 'clonepress_reset_notice');

