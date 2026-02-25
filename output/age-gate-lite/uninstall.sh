#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agl_cookie_days'
wp option delete 'agl_primary_color'
wp option delete 'agl_title_color'
wp option delete 'agl_main_title'
wp option delete 'agl_description'
wp option delete 'agl_custom_success_message'
wp option delete 'agl_yes_btn_text'
wp option delete 'agl_no_btn_text'
wp option delete 'agl_test_mode'
wp option delete 'agl_logo_img'
wp option delete 'agl_age_limit'
wp option delete 'agl_safe_link'

