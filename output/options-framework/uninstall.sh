#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'optionsframework'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'optionsframework_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'optionsframework_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'optionsframework_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'optionsframework_ignore_notice'"
