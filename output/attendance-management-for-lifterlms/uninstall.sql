-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('llmsat_version', 'llmsat_migration_status', 'llmsat_db_version', 'llms_integration_lifterlms_attendance_enabled', 'llmsat_use_custom_table', 'llms_integration_global_attendance_enabled', 'llms_integration_attendance_marking_roles', 'llms_integration_reporting_enabled', 'llms_integration_auto_refresh_enabled', 'llms_integration_email_alerts_enabled', 'llms_integration_low_attendance_threshold', 'llmsat_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('llmsatck1', '_llmsat_test_user', '_llmsat_test_course', '_llms_price', '_llms_enrollment_opens_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('llmsatck1', '_llmsat_test_user', '_llmsat_test_course', '_llms_price', '_llms_enrollment_opens_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('llmsatck1', '_llmsat_test_user', '_llmsat_test_course', '_llms_price', '_llms_enrollment_opens_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('llmsatck1', '_llmsat_test_user', '_llmsat_test_course', '_llms_price', '_llms_enrollment_opens_message');

