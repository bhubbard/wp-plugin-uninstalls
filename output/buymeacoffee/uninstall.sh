#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bmc_plugin_activated'
wp option delete 'BMC_Widget_disconnect'
wp option delete 'widget_buymeacoffee_widget'
wp option delete 'my_plugin_db_version'

