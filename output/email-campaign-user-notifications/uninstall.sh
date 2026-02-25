#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Activated_Plugin'
wp option delete 'default_subject'
wp option delete 'default_template'
wp option delete 'email_crons_roles_chunk'
wp option delete 'email_crons_every_cron_time'
wp option delete 'email_crons_user_chunk'
wp option delete 'email_crons_email_subject'
wp option delete 'email_crons_email_template_editor_name'
wp option delete 'customize_global_variable_options'
wp option delete 'customize_variable_preview'

# Delete Transients
wp transient delete 'email_crons_bulk_user_email'
wp transient delete 'email_crons_bulk_users_track'
wp transient delete 'email_crons_progress_check'
wp transient delete 'cron_setting_update_success'
wp transient delete 'cron_setting_update_fail'
wp transient delete 'update_success'
wp transient delete 'update_fail'
wp transient delete 'update_error'
wp transient delete 'users_selection_update_success'

# Clear Cron Jobs
wp cron event delete 'email_crons_call_email_template'

