#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_secret_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhooks_%'"
wp option delete 'framework_practice_options'

