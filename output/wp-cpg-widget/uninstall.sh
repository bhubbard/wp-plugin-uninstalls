#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_cpg_plugin_db_default'
wp option delete 'wp_cpg_plugin_options'
wp option delete 'wp_cpg_widget_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_cpg_plugin_db_%'"

