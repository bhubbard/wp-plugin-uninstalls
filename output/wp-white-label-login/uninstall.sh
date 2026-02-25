#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpwll_options'
wp option delete 'wpwll_background'
wp option delete 'wpwll_logo'
wp option delete 'wpwll_custom_css'
wp option delete 'ewl_menu_title'
wp option delete 'ewl_plugin_transient_cache'

# Clear Cron Jobs
wp cron event delete 'ewl_update_plugins_list'

