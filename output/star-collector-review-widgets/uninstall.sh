#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SCRPlugin_activation_completed'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_plugin_info_%' OR option_name LIKE '_site_transient_plugin_info_%'"

# Clear Cron Jobs
wp cron event delete 'your_cron_job'

