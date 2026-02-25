#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awesome_dokan_options'
wp option delete 'awesome_dokan_styles'
wp option delete 'dokan_appearance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awesome_dokan_fullscreen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awesome_dokan_fullscreen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awesome_dokan_fullscreen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awesome_dokan_fullscreen'"
