#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'novaksolutions_upsell_default_%'"
wp option delete 'novaksolutions_upsell_default_image'
wp option delete 'novaksolutions_upsell_default_image_width'
wp option delete 'novaksolutions_upsell_default_image_height'
wp option delete 'novaksolutions_upsell_merchantaccount_id'
wp option delete 'novaksolutions_upsell_button_type'
wp option delete 'infusionsoft_sdk_app_name'
wp option delete 'infusionsoft_sdk_api_key'
wp option delete 'novaksolutions_upsell_test_merchantaccount_id'
wp option delete 'novaksolutions_upsell_default_success_url'
wp option delete 'novaksolutions_upsell_default_failure_url'
wp option delete 'novaksolutions_upsell_default_button_text'
wp option delete 'novaksolutions_upsell_default_action_set_id'
wp option delete 'novaksolutions_upsell_default_id'
wp option delete 'novaksolutions_upsell_default_class'

