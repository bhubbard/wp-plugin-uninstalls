#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_obituray_options'
wp option delete 'wpffo_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'obituary-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'obituary-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'obituary-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'obituary-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'obituary-archive-template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'obituary-archive-template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'obituary-archive-template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'obituary-archive-template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpffo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpffo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpffo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpffo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ff-first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ff-first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ff-first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ff-first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ff-last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ff-last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ff-last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ff-last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ff-date_of_birth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ff-date_of_birth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ff-date_of_birth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ff-date_of_birth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ff-date_of_death'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ff-date_of_death'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ff-date_of_death'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ff-date_of_death'"
