#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gotowebinar_settings'
wp option delete 'gotowebinar_log'
wp option delete 'gotowebinar_connection_log'
wp option delete 'gotowebinar_auth_settings'

# Delete Transients
wp transient delete 'northern_beaches_websites'
wp transient delete 'wp-gotowebinar-update'
wp transient delete 'gotowebinar_auth_settings'

