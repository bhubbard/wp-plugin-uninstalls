#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arviachat_plugin_version'
wp option delete 'arviachat_token'
wp option delete 'arviachat_hash'
wp option delete 'arviachat_projectId'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'arviachat_%'"

