#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socialmedia_Default_Setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'socialmedia_custom_setting_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'socialmedia_custom_setting_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'socialmedia_custom_setting_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'socialmedia_custom_setting_%'"
