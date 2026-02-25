#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adventurebook_db_version'
wp option delete 'adventurebook_enable_inline_editing'
wp option delete 'adventurebook_settings'
wp option delete 'adventurebook_version'
wp option delete 'adventurebook_character_page_id'
wp option delete 'adventurebook_fixed_content_height'
wp option delete 'adventurebook_show_direction_icons'
wp option delete 'adventurebook_enable_keyboard_navigation'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_adventurebook_just_entered_zone_%' OR option_name LIKE '_site_transient_adventurebook_just_entered_zone_%'"
wp transient delete 'adventurebook_messages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'adventurebook_current_character_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'adventurebook_current_character_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'adventurebook_current_character_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'adventurebook_current_character_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adventurebook_page_script'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adventurebook_page_script'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adventurebook_page_script'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adventurebook_page_script'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adventurebook_page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adventurebook_page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adventurebook_page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adventurebook_page_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adventurebook_shop_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adventurebook_shop_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adventurebook_shop_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adventurebook_shop_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adventurebook_shop_price_factor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adventurebook_shop_price_factor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adventurebook_shop_price_factor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adventurebook_shop_price_factor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adventurebook_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adventurebook_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adventurebook_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adventurebook_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_additional_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_additional_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_additional_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_additional_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adventurebook_combat_system'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adventurebook_combat_system'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adventurebook_combat_system'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adventurebook_combat_system'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adventurebook_start_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adventurebook_start_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adventurebook_start_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adventurebook_start_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adventurebook_last_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adventurebook_last_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adventurebook_last_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adventurebook_last_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adventurebook_decision_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adventurebook_decision_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adventurebook_decision_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adventurebook_decision_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adventurebook_audio_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adventurebook_audio_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adventurebook_audio_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adventurebook_audio_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adventurebook_startpage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adventurebook_startpage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adventurebook_startpage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adventurebook_startpage'"
