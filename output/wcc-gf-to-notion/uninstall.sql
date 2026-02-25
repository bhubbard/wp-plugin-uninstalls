-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcc_gf_notion_ignore_spam_entry', 'gf_db_version', 'wcc_gf_notion_notification_send_to', 'wcc_gf_notion_notification_subject', 'wcc_gf_notion_debug', 'wcc_gf_notion_notification_send_to	', 'wcc_gf_notion_uninstall', 'wcc_gf_notion_licence', 'wcc_gf_notion_db_version');

