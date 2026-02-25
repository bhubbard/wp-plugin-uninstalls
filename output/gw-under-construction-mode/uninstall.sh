#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gwuncomo_title'
wp option delete 'gwuncomo_message'
wp option delete 'gwuncomo_theme_mode'
wp option delete 'gwuncomo_logo_id'
wp option delete 'gwuncomo_enabled'
wp option delete 'gwuncomo_start_datetime'
wp option delete 'gwuncomo_end_datetime'
wp option delete 'gwuncomo_whitelist_ips'

# Delete Transients
wp transient delete 'update_plugins'

