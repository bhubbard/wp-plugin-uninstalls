#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'topposts_for_google_analytics_premium_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_image_url'"
