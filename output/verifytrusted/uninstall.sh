#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vtrust_enable_custom_styles'
wp option delete 'vtrust_card_bg_color'
wp option delete 'vtrust_card_border_color'
wp option delete 'vtrust_name_color'
wp option delete 'vtrust_body_color'
wp option delete 'vtrust_font_family'
wp option delete 'vtrust_name_font_size'
wp option delete 'vtrust_date_font_size'
wp option delete 'vtrust_body_font_size'

