#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wikipediapreview_init_timestamp'
wp option delete 'wikipediapreview_do_activation_redirect'
wp option delete 'wikipediapreview_options_detect_links'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wikipediapreview_detectlinks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wikipediapreview_detectlinks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wikipediapreview_detectlinks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wikipediapreview_detectlinks'"
