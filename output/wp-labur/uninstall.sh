#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'labur_settings_api_key'
wp option delete 'labur_settings_host'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'labur_shortened_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'labur_shortened_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'labur_shortened_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'labur_shortened_url'"
