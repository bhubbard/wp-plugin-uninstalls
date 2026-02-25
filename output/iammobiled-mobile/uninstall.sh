#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iammobiled_ad_option'
wp option delete 'iammobiled_ad_share'
wp option delete 'iammobiled_user_admob_id'
wp option delete 'iammobiled_admob_id'
wp option delete 'iammobiled_mobile_template'
wp option delete 'cfmobi_mobile_browsers'
wp option delete 'cfmobi_touch_browsers'
wp option delete 'iammobiled_mobile_theme'
wp option delete 'current_theme'

