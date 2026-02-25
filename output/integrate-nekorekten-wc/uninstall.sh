#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inwc_settings_group'
wp option delete 'inwc_settings_turn_on'
wp option delete 'inwc_settings_API_key'
wp option delete 'inwc_settings_colum_orders_page'
wp option delete 'inwc_settings_show_in_admin_email'
wp option delete 'abl_inwc_version'

