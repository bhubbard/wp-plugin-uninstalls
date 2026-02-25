#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smrpwa_app_name'
wp option delete 'smrpwa_app_short_name'
wp option delete 'smrpwa_app_theme_color'
wp option delete 'smrpwa_app_bg_color'
wp option delete 'smrpwa_app_icon_192'
wp option delete 'smrpwa_app_icon_512'
wp option delete 'smrpwa_button_text'
wp option delete 'smrpwa_button_bg_color'
wp option delete 'smrpwa_button_text_color'
wp option delete 'smrpwa_pos_vertical'
wp option delete 'smrpwa_pos_horizontal'

