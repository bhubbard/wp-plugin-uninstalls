#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acoplw_dp_list_status'
wp option delete 'acoplw_show_on_outStck'
wp option delete 'acoplw_wc_badge_status'
wp option delete 'acoplw_enable_title_hook'
wp option delete 'acoplw_wrapper_class'
wp option delete 'acoplw_enable_loop_hook'
wp option delete 'acoplw_enable_shop_hook'
wp option delete 'acoplw_detail_page_badge'
wp option delete 'acoplw_jquery_status'
wp option delete 'acoplw_customHooks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_style_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_style_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_style_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_style_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_label_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_label_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_label_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_label_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_schedules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_schedules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_schedules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_schedules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_position_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_position_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_position_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_position_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_preview_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_preview_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_preview_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_preview_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_use_pschedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_use_pschedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_use_pschedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_use_pschedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_selected_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_selected_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_selected_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_selected_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'list_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'list_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'list_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'list_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_list_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_list_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_list_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_list_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
