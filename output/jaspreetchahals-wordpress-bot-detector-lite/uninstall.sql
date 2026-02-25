-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jcorgbotdetector_dbversion', 'jcorgbotdetector_db_version', 'jcorgbotdetector_last_email_sent', 'jcorgbotdetector_email_interval', 'jcorgbotdetector_email_format', 'jcorgbotdetector_history_to_keep', 'jcorgbotdetector_email');

