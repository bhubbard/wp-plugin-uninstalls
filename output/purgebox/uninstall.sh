#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%purge_all_roles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%purge_path'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'purgebox_%'"
wp option delete 'purgebox_plugin_version'
wp option delete 'purgebox_purge_path'
wp option delete 'purgebox_multisite_enabled'
wp option delete 'purgebox_manual_purgepath_enabled'
wp option delete 'purgebox_api_key'
wp option delete 'purgebox_group'
wp option delete 'purgebox_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_purged' OR option_name LIKE '_site_transient_%_purged'"

