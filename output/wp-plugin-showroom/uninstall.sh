#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plgshow_plugin_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_plgshow_%' OR option_name LIKE '_site_transient_plgshow_%'"

