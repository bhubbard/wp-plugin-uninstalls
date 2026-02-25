#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'percup_bg_color'
wp option delete 'percup_logo'
wp option delete 'percup_heading'
wp option delete 'percup_heading_color'
wp option delete 'percup_font_size'
wp option delete 'percup_font_family'
wp option delete 'percup_text_content'
wp option delete 'percup_content_font_size'
wp option delete 'percup_content_font_family'
wp option delete 'percup_subtext_color'
wp option delete 'percup_button_text'
wp option delete 'percup_button_bg_color'
wp option delete 'percup_button_text_color'
wp option delete 'percup_cookie_days'

