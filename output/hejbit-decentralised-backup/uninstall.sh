#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hejbit_login_dlwcloud'
wp option delete 'hejbit_pass_dlwcloud'
wp option delete 'hejbit_url_dlwcloud'
wp option delete 'hejbit_logs_retention'
wp option delete 'hejbit_email_dlwcloud'
wp option delete 'hejbit_folder_dlwcloud'
wp option delete 'hejbit_frequency_dlwcloud'
wp option delete 'hejbit_day_dlwcloud'
wp option delete 'hejbit_hour_dlwcloud'
wp option delete 'hejbit_db_only_dlwcloud'
wp option delete 'db_only_dlwcloud'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'hejbit_Save'
wp cron event delete 'hejbit_SaveInProgress'

