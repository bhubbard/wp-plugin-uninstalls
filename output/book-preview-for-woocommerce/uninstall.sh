#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbps_popup_front_selection'
wp option delete 'wbps_preview_front_settings_background_color'
wp option delete 'wbps_preview_front_settings_text_color'
wp option delete 'wbps_preview_front_settings_title'
wp option delete 'wbps_preview_close_settings_background_color'
wp option delete 'wbps_preview_close_settings_text_color'
wp option delete 'wbps_enable_purchase_alert'
wp option delete 'wbps_purchase_alert_title'
wp option delete 'wbps_purchase_alert_content'
wp option delete 'wbps_purchase_button_text'
wp option delete 'wbps_purchase_button_action'
wp option delete 'wbps_purchase_button_link'
wp option delete 'wbps_preview_feature_fullscreen'

