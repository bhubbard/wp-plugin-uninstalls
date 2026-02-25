#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_packs'"
wp option delete '_site_transient_update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_missing_plugins'"

