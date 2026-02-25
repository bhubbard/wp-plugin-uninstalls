#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'connect2form_data_settings'
wp option delete 'connect2form_activated'
wp option delete 'connect2form_version'
wp option delete 'connect2form_appearance_settings'
wp option delete 'connect2form_performance_settings'
wp option delete 'connect2form_antispam_settings'
wp option delete 'connect2form_recaptcha_settings'
wp option delete 'connect2form_security_settings'
wp option delete 'wordpress_api_key'
wp option delete 'connect2form_maintenance_settings'

# Delete Transients
wp transient delete 'connect2form_last_queue_process'
wp transient delete 'connect2form_last_frontend_queue_process'

# Clear Cron Jobs
wp cron event delete 'connect2form_process_emails'
wp cron event delete 'connect2form_auto_delete_submissions'
wp cron event delete 'connect2form_cleanup_email_queue'
wp cron event delete 'connect2form_daily_cleanup'

