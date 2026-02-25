#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'synapse_api_rate_limit'
wp option delete 'synapse_enable_login_tracking'
wp option delete 'synapse_plugin_tags_cache'
wp option delete 'sg_security_login_url'
wp option delete 'synapse_api_keys'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_synapse_new_api_key_%' OR option_name LIKE '_site_transient_synapse_new_api_key_%'"

# Clear Cron Jobs
wp cron event delete 'synapse_update_plugin_tags_cache_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
