#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pa_complete_wizard'
wp option delete 'pa_saved_features'
wp option delete 'pa_save_settings'
wp option delete 'pa_maps_save_settings'
wp option delete 'pa_global_btn_value'
wp option delete 'pa_unused_widget_dialog'
wp option delete 'pa_install_time'
wp option delete 'elementor_use_mini_cart_template'
wp option delete 'pa_site_custom_cursor'
wp option delete 'pa_review_notice'
wp option delete 'bf25-last-not'
wp option delete 'papro_license_key'
wp option delete 'elementor_controls_usage'
wp option delete 'active_sitewide_plugins'
wp option delete '_pa_plugin_pointer_priority'
wp option delete 'pa_wht_lbl_save_settings'
wp option delete 'yith_wcwl_product_added_text'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'pa_mc_layout'
wp option delete 'pinterest_token'
wp option delete 'pinterest_refresh_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'premium_countdown_evergreen_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pa_countdown_target%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_old'"

# Delete Transients
wp transient delete 'pa_license_info'
wp transient delete 'pa_news'
wp transient delete 'pa_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pa_stories_%' OR option_name LIKE '_site_transient_pa_stories_%'"
wp transient delete 'update_plugins'
wp transient delete 'pa_product_added_to_cart'
wp transient delete 'pa_cm25_pointer_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_premium_vimeo_%' OR option_name LIKE '_site_transient_premium_vimeo_%'"
wp transient delete 'pa_val26_pointer_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pa_tiktok_token_%' OR option_name LIKE '_site_transient_pa_tiktok_token_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pa_megamenu_item_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pa_megamenu_item_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pa_megamenu_item_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pa_megamenu_item_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pa_mega_content_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pa_mega_content_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pa_mega_content_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pa_mega_content_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
