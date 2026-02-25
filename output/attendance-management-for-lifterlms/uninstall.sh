#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llmsat_version'
wp option delete 'llmsat_migration_status'
wp option delete 'llmsat_db_version'
wp option delete 'llms_integration_lifterlms_attendance_enabled'
wp option delete 'llmsat_use_custom_table'
wp option delete 'llms_integration_global_attendance_enabled'
wp option delete 'llms_integration_attendance_marking_roles'
wp option delete 'llms_integration_reporting_enabled'
wp option delete 'llms_integration_auto_refresh_enabled'
wp option delete 'llms_integration_email_alerts_enabled'
wp option delete 'llms_integration_low_attendance_threshold'
wp option delete 'llmsat_options'

# Clear Cron Jobs
wp cron event delete 'llmsat_daily_attendance_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llmsatck1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llmsatck1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llmsatck1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llmsatck1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llmsat_test_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llmsat_test_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llmsat_test_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llmsat_test_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llmsat_test_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llmsat_test_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llmsat_test_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llmsat_test_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_enrollment_opens_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_enrollment_opens_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_enrollment_opens_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_enrollment_opens_message'"
