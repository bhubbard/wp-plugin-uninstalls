#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coinsnap_connection_status_display'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpforms_settings_coinsnap_webhook_%'"

