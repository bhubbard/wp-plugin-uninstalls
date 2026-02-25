#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cituro_account_number'
wp option delete 'cituro_preset_service'
wp option delete 'cituro_preset_category'
wp option delete 'cituro_preset_resource'
wp option delete 'cituro_preset_location'
wp option delete 'cituro_enable_custom_script'
wp option delete 'cituro_custom_script'
wp option delete 'cituro_booking_widget_opened'

