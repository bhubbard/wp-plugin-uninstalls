#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrtext_radio'
wp option delete 'mrtext_text_field_1'
wp option delete 'mrtext_text_field_1_link'
wp option delete 'mrtext_text_field_2'
wp option delete 'mrtext_text_field_2_link'
wp option delete 'mrtext_text_field_3'
wp option delete 'mrtext_text_field_3_link'
wp option delete 'mrtext_text_field_4'
wp option delete 'mrtext_text_field_4_link'
wp option delete 'mrtext_text_field_5'
wp option delete 'mrtext_text_field_5_link'
wp option delete 'mrtext_bg_color_option'
wp option delete 'mrtext_color_option'
wp option delete 'mrtext_hover_color_option'
wp option delete 'mrtext_font_size'
wp option delete 'mrtext_font_weight'
wp option delete 'mrtext_font_direction'
wp option delete 'mrtext_font_scroll_delay'
wp option delete 'mmrtext_radio_before_after'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrt_dismissed_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrt_dismissed_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrt_dismissed_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrt_dismissed_notice'"
