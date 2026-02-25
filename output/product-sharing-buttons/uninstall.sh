#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'psb_display_product_share_button'
wp option delete 'psb_buttons_visible_position'
wp option delete 'psb_button_design'
wp option delete 'blank_tab_enable'
wp option delete 'psb_social_buttons'

