#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'template_select'
wp option delete 'template_bg_color'
wp option delete 'template_bg_img_attachment_id'
wp option delete 'template_bg_img_url'
wp option delete 'template_logo_attachment_id'
wp option delete 'template_logo_url'
wp option delete 'template_youtube_id'
wp option delete 'template_font_color'
wp option delete 'template_title'
wp option delete 'template_sub_title'
wp option delete 'email_enabled'
wp option delete 'email_freq'
wp option delete 'email_target'
wp option delete 'email_subject'
wp option delete 'email_msg'
wp option delete 'plugin_activate_notice_shown'

