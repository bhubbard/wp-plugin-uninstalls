-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctdb_done_redirect', 'ctdb_review_notice_dismissed', 'ctdb_pro_notice_dismissed', 'ctdb_review_plugin_notice_dismissed', 'ctdb_install_date', 'ctdb_database_version', 'ctdb_updated_from_version', 'ctdb_upgrade_settings', 'ctdb_user_settings', 'ctdb_options_settings', 'ctdb_design_settings', 'ctdb_nag_dismissed', 'ctdb_categories_settings', 'ctdb_recaptcha_settings', 'ctdb_wizard_done');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('activate_key', 'ctdb_uniqid', 'ctdb_author_opted_out');
DELETE FROM wp_usermeta WHERE meta_key IN ('activate_key', 'ctdb_uniqid', 'ctdb_author_opted_out');
DELETE FROM wp_termmeta WHERE meta_key IN ('activate_key', 'ctdb_uniqid', 'ctdb_author_opted_out');
DELETE FROM wp_commentmeta WHERE meta_key IN ('activate_key', 'ctdb_uniqid', 'ctdb_author_opted_out');

