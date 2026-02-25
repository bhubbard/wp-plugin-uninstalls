#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'btwab_regen_thumbnails_running'
wp option delete 'btwab_regen_thumbnails_offset'
wp option delete 'btwab_settings'
wp option delete 'btwab_admin_ux'
wp option delete 'btwab_admin_ux_roles'

# Clear Cron Jobs
wp cron event delete 'btwab_regen_thumbnails_job'

