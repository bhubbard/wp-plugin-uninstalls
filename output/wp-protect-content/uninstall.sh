#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpc_disallow_copy_content'
wp option delete 'wpc_disallow_f12'
wp option delete 'wpc_disallow_f12_msg'
wp option delete 'wpc_disallow_right_click'
wp option delete 'wpc_right_click_msg'
wp option delete 'wpc_disallow_drag'
wp option delete 'wpc_alert_style'
wp option delete 'wpc_hide_alert'
wp option delete 'wpc_debug_mode'

