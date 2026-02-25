#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_phone_is_registered_1.7.0'
wp option delete 'wp_phone_registration_data'
wp option delete 'user_personal_number'
wp option delete 'wp_click_to_call_element'
wp option delete 'wp_click_to_call_not_supported'
wp option delete 'wp_click_to_call_color_theme'
wp option delete 'wp_phone_number'
wp option delete 'wp_phone_clicktocall'

