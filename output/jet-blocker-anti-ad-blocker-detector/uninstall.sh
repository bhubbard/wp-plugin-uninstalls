#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetblocker_switch'
wp option delete 'jetblocker_fullscreen'
wp option delete 'wpcd_skin'
wp option delete 'jetblocker_heading'
wp option delete 'jetblocker_subheading'
wp option delete 'jetblocker_text'
wp option delete 'whitelist_btn_text'
wp option delete 'jetblocker_donate_btn_text'
wp option delete 'jetblocker_donate_link'
wp option delete 'jetblocker_anti_ad_blocker'
wp option delete 'jetblocker_reviews'

