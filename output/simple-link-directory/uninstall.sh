#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%'"
wp option delete 'hclpage'
wp option delete 'sld_embed_credit_title'
wp option delete 'sld_embed_credit_link'
wp option delete 'sld_enable_search'
wp option delete 'sld_lan_live_search'
wp option delete 'sld_add_new_button'
wp option delete 'sld_add_item_link'
wp option delete 'sld_lan_add_link'
wp option delete 'sld_enable_top_part'
wp option delete 'sld_lan_share_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'sld_enable_rtl'
wp option delete 'sld_no_results_found'
wp option delete 'sld_enable_click_tracking'
wp option delete 'sld_ot_convrt'
wp option delete 'option_tree'
wp option delete 'sld_enable_upvote'
wp option delete 'sld_enable_dark_mode'
wp option delete 'sld_lan_enable_dark_mode'
wp option delete 'sld_lan_dark_mode_on'
wp option delete 'sld_lan_light_mode_on'
wp option delete 'sld_enable_scroll_to_top'
wp option delete 'sld_custom_style'
wp option delete 'sld_custom_js'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_dismiss'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_active_time'"
wp option delete 'sld_direct_link_img_upload_for_list_item'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcopd_list_item01'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcopd_list_item01'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcopd_list_item01'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcopd_list_item01'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcopd_list_conf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcopd_list_conf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcopd_list_conf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcopd_list_conf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sld_add_block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sld_add_block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sld_add_block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sld_add_block'"
