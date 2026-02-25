#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayudawp_wpotweaks_show_activation_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"

# Clear Cron Jobs
wp cron event delete 'ayudawp_wpotweaks_clean_transients'

