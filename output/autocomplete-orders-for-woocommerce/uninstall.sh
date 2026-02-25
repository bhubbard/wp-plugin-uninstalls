#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcao_autocomplete_order_status'
wp option delete 'aofw_autocomplete_order_status'
wp option delete 'wcao_auto_complete_order_for'
wp option delete 'aofw_auto_complete_order_for'
wp option delete 'aofw_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

