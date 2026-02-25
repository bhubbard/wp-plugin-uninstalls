#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpf_plugins_to_hide'
wp option delete 'wpf_hidden_tab_position'
wp option delete 'wpf_hide_unused_plugin_status'

