#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ms_sg_use_dry_run'
wp option delete 'ms_sg_file_post_date'
wp option delete 'ms_sg_use_debug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_msc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_msc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_msc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_msc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
