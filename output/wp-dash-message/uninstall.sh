#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_dash_message'
wp option delete 'wp_dash_message_network'
wp option delete 'wp_remove_site_widgets'
wp option delete 'wp_remove_network_widgets'
wp option delete 'wp_remove_site_widgets_N'
wp option delete 'wp_remove_global_widgets'

