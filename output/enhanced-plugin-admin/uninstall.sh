#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epa_plugin_settings'
wp option delete 'epa_pn_hidden'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_epa_%' OR option_name LIKE '_site_transient_epa_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_in_wp_plugin_svn' OR option_name LIKE '_site_transient_%_in_wp_plugin_svn'"
wp transient delete 'update_plugins'

