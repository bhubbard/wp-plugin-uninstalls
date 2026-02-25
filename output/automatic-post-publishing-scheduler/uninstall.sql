-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('publish_scheduler_options', 'wwm_scheduler_general_options', 'wwm_pubscheduler_db_version');

