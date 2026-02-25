#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'up_globe_uuid'
wp option delete 'up_globe_api_url'
wp option delete 'up_globe_parent_uuid'
wp option delete 'up_globe_last_registration_result'

