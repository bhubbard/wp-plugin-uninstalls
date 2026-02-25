#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfound_date_range'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfound_date_range'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfound_date_range'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfound_date_range'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfound_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfound_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfound_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfound_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfound_timer_heading_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfound_timer_heading_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfound_timer_heading_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfound_timer_heading_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfound_enable_timer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfound_enable_timer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfound_enable_timer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfound_enable_timer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfound_enable_progress_bar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfound_enable_progress_bar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfound_enable_progress_bar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfound_enable_progress_bar'"
