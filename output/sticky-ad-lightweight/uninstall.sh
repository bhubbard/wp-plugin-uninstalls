#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sticky_ad_lightweight_auto_hide_delay'
wp option delete 'sticky_ad_lightweight_schedule_start'
wp option delete 'sticky_ad_lightweight_schedule_end'
wp option delete 'sticky_ad_lightweight_close_button_type'
wp option delete 'sticky_ad_lightweight_close_button_image'
wp option delete 'sticky_ad_lightweight_close_button_text'
wp option delete 'sticky_ad_lightweight_close_button_svg'
wp option delete 'sticky_ad_lightweight_display_mobile'
wp option delete 'sticky_ad_lightweight_display_desktop'
wp option delete 'sticky_ad_lightweight_ad_code'
wp option delete 'sticky_ad_lightweight_display_top'
wp option delete 'sticky_ad_lightweight_display_bottom'
wp option delete 'sticky_ad_lightweight_background_color'

