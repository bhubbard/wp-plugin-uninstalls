#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pcf7p_enabled'
wp option delete 'pcf7p_form_id'
wp option delete 'pcf7p_delay_seconds'
wp option delete 'pcf7p_width'
wp option delete 'pcf7p_trigger_type'
wp option delete 'pcf7p_device_rule'
wp option delete 'pcf7p_page_rule_type'
wp option delete 'pcf7p_overlay_opacity'
wp option delete 'pcf7p_animation'
wp option delete 'pcf7p_btn_color'
wp option delete 'pcf7p_popup_content'
wp option delete 'pcf7p_selected_pages'

