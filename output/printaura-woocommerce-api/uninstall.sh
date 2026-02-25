#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_classes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_require_https'"
wp option delete 'be_woocommerce_shipping_zones'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_slug'"

# Delete Transients
wp transient delete 'dirsize_cache'

# Clear Cron Jobs
wp cron event delete 'wooc_schedule_send_orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_mail_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_mail_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_mail_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_mail_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_mail_body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_mail_body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_mail_body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_mail_body'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_mail_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_mail_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_mail_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_mail_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
