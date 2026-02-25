#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkedin_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedin_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedin_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedin_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedin_access_token'"
