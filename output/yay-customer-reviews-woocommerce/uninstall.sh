#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yayrev_onboarding_complete'
wp option delete 'yayrev_has_reviewed'
wp option delete 'yayrev_my_account_endpoint_flushed'
wp option delete 'yayrev_settings'
wp option delete 'yayrev_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version_info'"
wp option delete 'woocommerce_enable_reviews'
wp option delete 'woocommerce_review_rating_verification_required'
wp option delete 'woocommerce_review_rating_verification_label'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'woocommerce_review_rating_required'
wp option delete 'woocommerce_email_from_address'
wp option delete 'yayrev_unsubscribed_emails'
wp option delete 'woocommerce_email_base_color'
wp option delete 'yayrev_license_key'
wp option delete 'yayrev_pinned_migrated'
wp option delete 'yayrev_wizard_completed'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'yayrev_activated'
wp transient delete 'yayrev_migrated_notice'

# Clear Cron Jobs
wp cron event delete 'check_license_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yayrev_video_poster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yayrev_video_poster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yayrev_video_poster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yayrev_video_poster'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yayrev_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yayrev_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yayrev_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yayrev_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yayrev_rating_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yayrev_rating_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yayrev_rating_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yayrev_rating_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_post_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_post_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_post_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_post_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yayrev_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yayrev_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yayrev_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yayrev_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yayrev_import_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yayrev_import_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yayrev_import_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yayrev_import_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yayrev_import_job'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yayrev_import_job'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yayrev_import_job'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yayrev_import_job'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yayrev_import_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yayrev_import_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yayrev_import_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yayrev_import_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_primary_term_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_primary_term_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_primary_term_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_primary_term_product_cat'"
