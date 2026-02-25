#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'theraplo_config'
wp option delete 'theraplo_override_bookero'
wp option delete 'theraplo_hide_bookero'
wp option delete 'theraplo_auto_insert'
wp option delete 'theraplo_show_welcome_notice'
wp option delete 'theraplo_custom_css'

# Delete Transients
wp transient delete 'theraplo_specialists_list'
wp transient delete 'theraplo_js_status'

# Clear Cron Jobs
wp cron event delete 'theraplo_daily_cleanup'

