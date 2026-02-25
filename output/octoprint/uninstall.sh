#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'octoprint_url'
wp option delete 'octoprint_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%delete_settings'"
wp option delete 'octoprint_widget_text'

