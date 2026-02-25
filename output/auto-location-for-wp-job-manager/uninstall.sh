#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'algwjm_enable_setting'
wp option delete 'algwjm_map_api_key'
wp option delete 'algwjm_types'
wp option delete 'algwjm_country_code'

