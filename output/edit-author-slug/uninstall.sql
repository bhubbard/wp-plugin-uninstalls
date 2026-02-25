-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_ba_eas_author_base', '_ba_eas_remove_front', '_ba_eas_do_role_based', '_ba_eas_role_slugs', '_ba_eas_do_auto_update', '_ba_eas_default_user_nicename', '_ba_eas_bulk_update', '_ba_eas_bulk_update_structure', '_ba_eas_db_version', '_ba_eas_old_options', 'ba_edit_author_slug', 'rewrite_rules');

