#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whatslink_click_tracker_show_badge_counter'
wp option delete 'whatslink_click_tracker_db_version'

