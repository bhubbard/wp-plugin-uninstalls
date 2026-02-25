#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordlive_howtojoinpage_slug'
wp option delete 'save_settings'
wp option delete 'wordlive_enable_shop_page_btn'
wp option delete 'wordlive_button_loc_shop_page'
wp option delete 'wordlive_enable_product_details_page_btn'
wp option delete 'wordlive_button_loc_product_details_page'
wp option delete 'wordlive_guestlogin_enable'
wp option delete 'wordlive_loginpage_slug'
wp option delete 'wordlive_livecall_slug'
wp option delete 'wordlive_livecall_btn_text'
wp option delete 'wordlive_livecall_btn_width'
wp option delete 'wordlive_livecall_btn_height'
wp option delete 'wordlive_livecall_btn_margin_type'
wp option delete 'wordlive_livecall_btn_margin_top'
wp option delete 'wordlive_livecall_btn_margin_right'
wp option delete 'wordlive_livecall_btn_margin_bottom'
wp option delete 'wordlive_livecall_btn_margin_left'
wp option delete 'wordlive_livecall_btn_padding_type'
wp option delete 'wordlive_livecall_btn_padding_top'
wp option delete 'wordlive_livecall_btn_padding_right'
wp option delete 'wordlive_livecall_btn_padding_bottom'
wp option delete 'wordlive_livecall_btn_padding_left'
wp option delete 'wordlive_livecall_btn_textalign'
wp option delete 'wordlive_livecall_btn_font_size'
wp option delete 'wordlive_livecall_btn_fontfamily'
wp option delete 'wordlive_livecall_btn_text_color'
wp option delete 'wordlive_livecall_btn_border_width'
wp option delete 'wordlive_livecall_btn_border_color'
wp option delete 'wordlive_livecall_btn_border_radius'
wp option delete 'wordlive_livecall_btn_bg_color'
wp option delete 'wordlive_livecall_btn_font_size_hover'
wp option delete 'wordlive_livecall_btn_text_color_hover'
wp option delete 'wordlive_livecall_btn_border_width_hover'
wp option delete 'wordlive_livecall_btn_border_color_hover'
wp option delete 'wordlive_livecall_btn_border_radius_hover'
wp option delete 'wordlive_livecall_btn_bg_color_hover'
wp option delete 'wordlive_seller_email_subject'
wp option delete 'wordlive_seller_email_temp'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
