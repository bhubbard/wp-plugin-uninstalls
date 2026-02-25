#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_plugin_theme_update_emails'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsk_banner_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsk_banner_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsk_banner_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsk_banner_dismissed'"
