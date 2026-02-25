#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtsb_embedding_in_progress'
wp option delete 'rtsb_embedding_progress'
wp option delete 'rtsb_embedding_process_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismiss_bf_woobundle_notice_%'"
wp option delete 'rtsb_admin_review_spare_me'
wp option delete 'rtsb_admin_review_rated'
wp option delete 'rtsb_admin_review_remind_me'
wp option delete 'elementor_experiment-e_swiper_latest'
wp option delete 'shopbuilder_permalinks_flushed'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'rtsb_settings'
wp option delete 'woocommerce_catalog_rows'
wp option delete 'woocommerce_catalog_columns'
wp option delete 'gd_system_last_cache_flush'
wp option delete 'rtsb_cron_schedule_free'
wp option delete 'rtsb_permalinks_need_flush'
wp option delete 'rtsb_permalinks_flushed'
wp option delete 'rtsb_version'
wp option delete 'woocommerce_checkout_company_field'
wp option delete 'woocommerce_checkout_address_2_field'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'default_product_cat'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_ship_to_destination'

# Delete Transients
wp transient delete 'rtsb_cache_cleared_notice'
wp transient delete 'shopbuilder_transient_cached_data'
wp transient delete 'rtsb_installing'

# Clear Cron Jobs
wp cron event delete 'rtsb_embedding_cron_run'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_has_embedding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_has_embedding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_has_embedding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_has_embedding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_product_page_template_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_product_page_template_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_product_page_template_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_product_page_template_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtsb_import_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtsb_import_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtsb_import_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtsb_import_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_created_abandonment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_created_abandonment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_created_abandonment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_created_abandonment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_created_by_ca_abandonment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_created_by_ca_abandonment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_created_by_ca_abandonment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_created_by_ca_abandonment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_auto_apply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_auto_apply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_auto_apply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_auto_apply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtsb_vg_disable_valiation_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtsb_vg_disable_valiation_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtsb_vg_disable_valiation_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtsb_vg_disable_valiation_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtsb_vg_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtsb_vg_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtsb_vg_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtsb_vg_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtsb_vg_video_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtsb_vg_video_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtsb_vg_video_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtsb_vg_video_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcml_duplicate_of_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcml_duplicate_of_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcml_duplicate_of_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcml_duplicate_of_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtsb_vs_attribute_tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtsb_vs_attribute_tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtsb_vs_attribute_tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtsb_vs_attribute_tooltip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rtsb_vs_attribute_tooltip_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rtsb_vs_attribute_tooltip_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rtsb_vs_attribute_tooltip_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rtsb_vs_attribute_tooltip_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtsb_vs_product_attribute_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtsb_vs_product_attribute_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtsb_vs_product_attribute_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtsb_vs_product_attribute_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtsb_vs_secondary_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtsb_vs_secondary_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtsb_vs_secondary_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtsb_vs_secondary_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtsb_vs_is_dual_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtsb_vs_is_dual_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtsb_vs_is_dual_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtsb_vs_is_dual_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtsb_vs_product_attribute_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtsb_vs_product_attribute_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtsb_vs_product_attribute_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtsb_vs_product_attribute_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtsb_vs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtsb_vs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtsb_vs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtsb_vs'"
