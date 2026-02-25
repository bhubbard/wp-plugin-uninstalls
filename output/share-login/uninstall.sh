#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slogin_outgoing_logout'
wp option delete 'slogin_outgoing_user_creation'
wp option delete 'slogin_main_site_secret_key'
wp option delete 'slogin_setup_complete'
wp option delete 'slogin_sitetype'
wp option delete 'slogin_incomming_logout'
wp option delete 'slogin_incomming_user_creation'
wp option delete 'slogin_main_site_url'
wp option delete 'slogin_sync_site_url'

