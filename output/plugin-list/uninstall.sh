#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppl_show_deactivated'
wp option delete 'wppl_show_plugin_itself'
wp option delete 'wppl_show_plugin_description'
wp option delete 'wppl_show_plugin_version'
wp option delete 'wppl_show_total_headline'
wp option delete 'wppl_total_headline_text'
wp option delete 'wppl_total_headline'

