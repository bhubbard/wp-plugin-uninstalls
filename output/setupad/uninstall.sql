-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('setupad_notice_date', 'setupad_plugin_review_reminder_shown', 'setupad_db_version');

