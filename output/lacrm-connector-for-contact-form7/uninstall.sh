#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lacrm_user_code'
wp option delete 'lacrm_api_token'
wp option delete 'lacrm_verify_token'
wp option delete 'lacrm_info'

