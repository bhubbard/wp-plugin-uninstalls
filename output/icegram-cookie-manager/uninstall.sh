#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icegram_cm_field1_cookie_message'
wp option delete 'icegram_cm_field3_cookie_button_text'
wp option delete 'icegram_cm_field2_cookie_expire_time'
wp option delete 'icegram_cm_field4_cookie_bg_color'
wp option delete 'icegram_cm_field5_cookie_text_color'
wp option delete 'icegram_cm_field6_cookie_button_color'
wp option delete 'icegram_cm_field7_cookie_button_text_color'

