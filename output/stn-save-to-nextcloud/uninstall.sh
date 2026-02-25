#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_dlwcloud'
wp option delete 'pass_dlwcloud'
wp option delete 'url_dlwcloud'
wp option delete 'email_dlwcloud'
wp option delete 'frequency_dlwcloud'
wp option delete 'day_dlwcloud'
wp option delete 'hour_dlwcloud'
wp option delete 'auto_update_dlwcloud'
wp option delete 'folder_dlwcloud'
wp option delete 'nb_save_dlwcloud'
wp option delete 'bdd_only_dlwcloud'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'stn_Save'
wp cron event delete 'stn_SaveInProgress'

