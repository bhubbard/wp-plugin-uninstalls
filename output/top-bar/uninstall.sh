#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpbr_guests_or_users'
wp option delete 'tpbr_fixed'
wp option delete 'tpbr_message'
wp option delete 'tpbr_status'
wp option delete 'tpbr_yn_button'
wp option delete 'tpbr_color'
wp option delete 'tpbr_btn_text'
wp option delete 'tpbr_btn_url'
wp option delete 'tpbr_btn_behavior'
wp option delete 'tpbr_detect_sticky'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tpbr_role_%'"

