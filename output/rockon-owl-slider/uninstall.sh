#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ros_slidetarget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ros_slidetarget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ros_slidetarget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ros_slidetarget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ros_slideurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ros_slideurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ros_slideurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ros_slideurl'"
