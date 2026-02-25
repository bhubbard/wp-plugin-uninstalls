#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clariti_api_key'
wp option delete 'clariti_api_host'
wp option delete 'clariti_api_secret'
wp option delete 'clariti_plugin_version'

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprm_parent_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprm_parent_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprm_parent_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprm_parent_post_id'"
