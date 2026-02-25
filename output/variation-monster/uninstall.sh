#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'variable_all_checked'
wp option delete 'varimo_review_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_attribute_display_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_attribute_tooltip_permission_%'"
wp option delete 'QUICK_LICENSE_OK'
wp option delete 'quick_license_key'
wp option delete 'quick_license_expiry_date'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'varimo_activation_date'
wp option delete 'quick_variable_activation_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'varimo_plugin_activation_redirect'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_secondary_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_secondary_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_secondary_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_secondary_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_tooltip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quick_cart_carousel_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quick_cart_carousel_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quick_cart_carousel_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quick_cart_carousel_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_list_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_list_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_list_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_list_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_swatches_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_swatches_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_swatches_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_swatches_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_table_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_table_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_table_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_table_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_before_cart_variation_table_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_before_cart_variation_table_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_before_cart_variation_table_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_before_cart_variation_table_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_swatches_archive_page_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_swatches_archive_page_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_swatches_archive_page_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_swatches_archive_page_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'variation_meta_attribute_display_type_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'variation_meta_attribute_display_type_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'variation_meta_attribute_display_type_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'variation_meta_attribute_display_type_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'show_attribute_archive_page_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'show_attribute_archive_page_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'show_attribute_archive_page_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'show_attribute_archive_page_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_table_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_table_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_table_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_table_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_list_template_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_list_template_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_list_template_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_list_template_meta'"
