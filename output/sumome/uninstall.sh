#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'endurance_user'
wp option delete 'sumome_site_id'
wp option delete 'sumome_hide_dashboard_overlay'
wp option delete 'sumome_initial_wpdashboard_load_time'

