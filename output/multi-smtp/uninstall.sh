#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multiSMTP_server_count'
wp option delete 'multiSMTP_lastServer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_host'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_port'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_username'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_password'"
wp option delete 'multiSMTP_from_address'
wp option delete 'multiSMTP_from_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_security'"

