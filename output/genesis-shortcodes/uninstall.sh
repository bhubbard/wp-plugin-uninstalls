#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gsc_plugin_%' OR option_name LIKE '_site_transient_gsc_plugin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gsc_plugin_banner_%' OR option_name LIKE '_site_transient_gsc_plugin_banner_%'"

