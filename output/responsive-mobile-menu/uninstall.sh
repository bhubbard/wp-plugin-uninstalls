#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbb_ocm_trigger_icon'
wp option delete 'wbb_ocm_css_selector'
wp option delete 'wbb_ocm_background'
wp option delete 'wbb_ocm_background_hover'
wp option delete 'wbb_ocm_borders'
wp option delete 'wbb_ocm_font_color'
wp option delete 'wbb_ocm_font_color_hover'
wp option delete 'wbb_ocm_font_family'
wp option delete 'wbb_ocm_devices_desktop'
wp option delete 'wbb_ocm_devices_laptop'
wp option delete 'wbb_ocm_devices_tablet'
wp option delete 'wbb_ocm_devices_mobile'

