#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fae_herald_version'
wp option delete 'fae_herald_data'
wp option delete 'fae_herald_lifecycle'

# Delete Transients
wp transient delete 'fae_herald_activation_notice'
wp transient delete 'fae_herald_refresh_notice'
wp transient delete 'fae_herald_refresh_plugin_name'

# Clear Cron Jobs
wp cron event delete 'fae_herald_get_info'
wp cron event delete 'fae_herald_check_single'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fae_herald_screen_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fae_herald_screen_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fae_herald_screen_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fae_herald_screen_options'"
