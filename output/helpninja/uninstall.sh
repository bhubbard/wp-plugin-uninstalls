#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'helpninja_edd_api_key'
wp option delete 'helpninja_api_key'
wp option delete 'helpninja_lantern_enable'
wp option delete 'helpninja_lantern_id'
wp option delete 'helpninja_app_version'
wp option delete 'helpninja_db_version'

