#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'adminz_flatsome'
wp option delete 'adminz_tools'
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_vnpay_settings'
wp option delete 'd2c_interiors'

# Delete Transients
wp transient delete 'woocommerce_email_header_image'
wp transient delete 'woocommerce_email_footer_text'

# Clear Cron Jobs
wp cron event delete 'adminz_schedule_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adminz_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adminz_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adminz_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adminz_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adminz_countview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adminz_countview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adminz_countview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adminz_countview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_template_block_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_template_block_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_template_block_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_template_block_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_block_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_block_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_block_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_block_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'template_block_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'template_block_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'template_block_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'template_block_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adminz_clone_base_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adminz_clone_base_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adminz_clone_base_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adminz_clone_base_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adminz_preload_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adminz_preload_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adminz_preload_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adminz_preload_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adminz_custom_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adminz_custom_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adminz_custom_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adminz_custom_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__discount_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__discount_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__discount_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__discount_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
