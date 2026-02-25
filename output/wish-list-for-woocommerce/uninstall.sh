#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_wl_enabled'
wp option delete 'alg_wc_wl_multiple_wishlist_enabled'
wp option delete 'alg_wc_wl_style_wish_list_multiple_tab_font_color'
wp option delete 'alg_wc_wl_style_wish_list_multiple_tab_bg_color'
wp option delete 'alg_wc_wl_style_wish_list_multiple_tab_active_font_color'
wp option delete 'alg_wc_wl_style_wish_list_multiple_tab_separator_color'
wp option delete 'alg_wc_wl_style_wish_list_multiple_tab_active_bg_color'
wp option delete 'alg_wish_list_version'
wp option delete 'alg_wc_wl_fontawesome_url'
wp option delete 'alg_wc_wl_responsiveness_max_width'
wp option delete 'alg_wc_wl_responsiveness_max_height'
wp option delete 'alg_wc_wl_responsiveness_evaluation_method'
wp option delete 'alg_wc_wl_default_js_toggle_events'
wp option delete 'alg_wc_wl_mobile_js_toggle_events'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'alg_wc_wl_texts_default_wishlist'
wp option delete 'alg_wc_wl_remove_if_added_to_cart'
wp option delete 'alg_wc_wl_the7_ti_wishlist_replace_shortcode'
wp option delete 'alg_wc_wl_thumb_btn_guide_img_selector'
wp option delete 'alg_wc_wl_style_wish_list_t_alignment_mobile'
wp option delete 'alg_wc_wl_social_email_subject_default_text'
wp option delete 'alg_wc_wl_sc_toggle_item_btn'
wp option delete 'alg_wc_wl_sc_icon'
wp option delete 'alg_wc_wl_sc_counter'
wp option delete 'alg_wc_wl_sc_alg_wc_wl'
wp option delete 'alg_wc_wl_sc_remove_all_btn'
wp option delete 'alg_wc_wl_sorting_method'
wp option delete 'woocommerce_alg_wc_wl_stock_settings'
wp option delete 'alg_wc_wl_subtotal'
wp option delete 'alg_wc_wl_subtotal_position'
wp option delete 'alg_wc_wl_subtotal_column'
wp option delete 'alg_wc_wl_tab_slug'
wp option delete 'alg_wc_wl_taxonomies'
wp option delete 'alg_wc_wl_guest_user_data_type'
wp option delete 'alg_wc_wl_guest_user_expire_time_number'
wp option delete 'alg_wc_wl_guest_user_expire_time_unit'
wp option delete 'alg_wc_wl_allow_variations'
wp option delete 'alg_wc_wl_texts_email_link'
wp option delete 'alg_wc_wl_dropdown_sorting'
wp option delete 'alg_wc_wl_duplicate_option'
wp option delete 'alg_wc_wl_note_field_email_enable'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_wl_added_by_registered_users_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_wl_added_by_registered_users_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_wl_added_by_registered_users_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_wl_added_by_registered_users_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_wl_added_by_unregistered_users_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_wl_added_by_unregistered_users_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_wl_added_by_unregistered_users_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_wl_added_by_unregistered_users_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_wl_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_wl_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_wl_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_wl_item'"
