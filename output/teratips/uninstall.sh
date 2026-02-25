#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tera_tips_enable_button'
wp option delete 'tera_tips_max_amount'
wp option delete 'tera_tips_icon'
wp option delete 'tera_tips_commission'
wp option delete 'tera_tips_show_summary'
wp option delete 'tera_tips_button_bg'
wp option delete 'tera_tips_button_text_color'
wp option delete 'tera_tips_button_text'
wp option delete 'tera_tips_warning_text'

