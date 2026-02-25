#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpavefrsz_elements_array'
wp option delete 'wpavefrsz_main_selector'
wp option delete 'wpavefrsz_min_modifier'
wp option delete 'wpavefrsz_max_modifier'
wp option delete 'wpavefrsz_step_modifier'
wp option delete 'wpavefrsz_remember_font_size_sitewide'
wp option delete 'wpavefrsz_remember_font_size_enforce'
wp option delete 'wpavefrsz_include_selectors'
wp option delete 'wpavefrsz_exclude_selectors'
wp option delete 'wpavefrsz_position'
wp option delete 'wpavefrsz_show_on_mobile'
wp option delete 'wpavefrsz_hide_text'
wp option delete 'wpavefrsz_text'
wp option delete 'wpavefrsz_instructions_icon'
wp option delete 'wpavefrsz_use_wp_icons'
wp option delete 'wpavefrsz_main_offset_mobile'
wp option delete 'wpavefrsz_main_offset'
wp option delete 'wpavefrsz_theme'
wp option delete 'wpavefrsz_add_notranslate_class'
wp option delete 'wpavefrsz_text_decrease'
wp option delete 'wpavefrsz_text_increase'
wp option delete 'wpavefrsz_text_reset'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpavefrsz-wpave-ignore-notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpavefrsz-wpave-ignore-notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpavefrsz-wpave-ignore-notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpavefrsz-wpave-ignore-notice'"
