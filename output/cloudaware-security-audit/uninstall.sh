#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_plugins'
wp option delete 'auto_update_themes'
wp option delete 'auto_update_core_dev'
wp option delete 'auto_update_core_minor'
wp option delete 'auto_update_core_major'
wp option delete 'cloudseca_plugin_options'

# Clear Cron Jobs
wp cron event delete 'cloudseca_cron_security_check'

