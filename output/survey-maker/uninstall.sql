-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ays_survey_maker_upgrade_plugin', 'ays_quiz_integrations', 'ays_survey_db_version');

