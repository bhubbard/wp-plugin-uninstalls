#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_map_api_key'
wp option delete 'datapress_et_phone_home'
wp option delete 'datapress_privacy_notice_shown'

