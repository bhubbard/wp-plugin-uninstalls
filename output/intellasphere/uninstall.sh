#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'is_ninja_addon'
wp option delete 'is_gravity_addon'
wp option delete 'is_connect_email'
wp option delete 'x-auth-token'
wp option delete 'is_op_array'
wp option delete 'get_brandkit_name'
wp option delete 'is_app_settings_url'
wp option delete 'is_api_settings_url'
wp option delete 'is_syc_settings_url'
wp option delete 'intellasphere_db_version'

