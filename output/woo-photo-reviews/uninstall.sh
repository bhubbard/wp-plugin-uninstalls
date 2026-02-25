#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_reviews'
wp option delete 'woocommerce_enable_coupons'
wp option delete '_wcpr_nkt_setting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"
wp option delete 'woocommerce_review_rating_verification_label'

# Delete Transients
wp transient delete 'woocommerce_photo_review_update_data_version_1_1_0'
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Clear Cron Jobs
wp cron event delete 'wpr_schedule_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpr_user_reviewed_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpr_user_reviewed_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpr_user_reviewed_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpr_user_reviewed_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reviews-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reviews-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reviews-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reviews-images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kt_unique_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kt_unique_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kt_unique_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kt_unique_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_for_reviews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_for_reviews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_for_reviews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_for_reviews'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdpr_agree'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdpr_agree'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdpr_agree'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdpr_agree'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
