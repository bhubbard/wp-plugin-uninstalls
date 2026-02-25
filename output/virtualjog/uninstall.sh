#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'virtualjog_cookie_module_domain'
wp option delete 'virtualjog_access_token'
wp option delete 'virtualjog_cookie_module_script'
wp option delete 'virtualjog_cookie_module_enabled'
wp option delete 'virtualjog_client_data'
wp option delete 'netjog_virtualjog_alerts'

