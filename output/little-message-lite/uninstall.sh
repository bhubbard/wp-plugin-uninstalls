#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'little_message_lite_emails'
wp option delete 'little_message_lite_sender_email'
wp option delete 'little_message_lite_horizontal_position'
wp option delete 'little_message_lite_vertical_position'
wp option delete 'little_message_lite_horizontal_distance'
wp option delete 'little_message_lite_vertical_distance'
wp option delete 'little_message_lite_tab_text'
wp option delete 'little_message_lite_logo_id'
wp option delete 'little_message_lite_welcome_message'
wp option delete 'little_message_lite_recaptcha_active'
wp option delete 'little_message_lite_recaptcha_version'
wp option delete 'little_message_lite_recaptcha_site_key'
wp option delete 'little_message_lite_recaptcha_secret_key'
wp option delete 'little_message_lite_include_credit'
wp option delete 'little_message_lite_whatsapp'
wp option delete 'little_message_lite_phone'
wp option delete 'little_message_pro_version_notice_status'

