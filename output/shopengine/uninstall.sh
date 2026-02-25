#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shopengine_direct_checkout_migration'
wp option delete 'shopengine_module_strings'
wp option delete 'elementor_css_print_method'
wp option delete '__shopengine_preview_product_id'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'shopengine_db_settings'
wp option delete '__shopengine_oppai__'
wp option delete '__shopengine_license_key__'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_never_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shopengine-edit_with_emailkit_banner_dismissed_%'"
wp option delete 'woocommerce_enable_guest_checkout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shopengine-metform_get_free_templates_banner_dismissed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check'"
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_catalog_columns'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'shopengine_product_id'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'language_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'language_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'language_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'language_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutenova_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutenova_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutenova_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutenova_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopengine_template__post_meta__type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopengine_template__post_meta__type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopengine_template__post_meta__type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopengine_template__post_meta__type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopengine_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopengine_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopengine_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopengine_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopengine_tag_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopengine_tag_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopengine_tag_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopengine_tag_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_gc_gift_card_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_gc_gift_card_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_gc_gift_card_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_gc_gift_card_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'devmonsta_bajaar_tag_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'devmonsta_bajaar_tag_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'devmonsta_bajaar_tag_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'devmonsta_bajaar_tag_bg_color'"
