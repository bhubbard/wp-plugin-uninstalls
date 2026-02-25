#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shm_wizard_step'
wp option delete 'shmapper-by-teplitsa'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shmapper_track_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shmapper_track_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shmapper_track_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shmapper_track_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_icon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_icon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_icon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_icon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'track'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'track'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'track'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'track'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_forms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_forms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_forms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_forms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_legend'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_legend'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_legend'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_legend'"
