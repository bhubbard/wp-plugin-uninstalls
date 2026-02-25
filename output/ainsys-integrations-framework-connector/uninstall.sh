#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'ainsys-webhook_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

