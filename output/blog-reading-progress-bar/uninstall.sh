#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brp_reading_progress_bar_options'
wp option delete 'admin_bar_menu'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brp_reading_progress_bar_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brp_reading_progress_bar_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brp_reading_progress_bar_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brp_reading_progress_bar_display'"
