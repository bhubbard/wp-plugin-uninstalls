#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dsxmlrpc-notice-forever'
wp option delete 'dsxmlrpc-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pand-%'"

