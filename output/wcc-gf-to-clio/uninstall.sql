-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcc_gf_clio_ignore_spam_entry', 'gf_db_version', 'wccc_gf_clio_notification_send_to   ', 'wccc_gf_clio_notification_subject', 'wccc_gf_clio_debug', 'wccc_gf_clio_notification_send_to	', 'wccc_gf_clio_ignore_spam_entry', 'wccc_gf_clio_uninstall', 'wccc_gf_clio_db_version');

