#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cafi_settings'
wp option delete 'cafi_templates_config'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cafi_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cafi_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cafi_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cafi_generated'"
