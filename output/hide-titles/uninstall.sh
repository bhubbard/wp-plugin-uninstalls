#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide-titles-option'
wp option delete 'hide_titles_plugin_do_activation_redirect'
wp option delete 'hide_titles_installed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_title'"
