#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'evc_app_id'
wp option delete 'evc_button_text'
wp option delete 'evc_app_certificate'
wp option delete 'evc_video_wrapper_bg_color'
wp option delete 'evc_button_bg_color'
wp option delete 'evc_button_text_color'
wp option delete 'evc_mik_camera_bg_color'
wp option delete 'evc_mik_camera_text_color'
wp option delete 'evc_leave_call_bg_color'
wp option delete 'evc_leave_call_text_color'

