#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ivole_referrals_tracking'
wp option delete 'ivole_license_key'
wp option delete 'woocommerce_default_country'
wp option delete 'ivole_registered_customers'
wp option delete 'ivole_verified_reviews'
wp option delete 'ivole_verified_live_mode'
wp option delete 'ivole_enable'
wp option delete 'ivole_enable_manual'
wp option delete 'ivole_reviews_nobranding'
wp option delete 'ivole_disable_lightbox'
wp option delete 'ivole_attach_image'
wp option delete 'ivole_attach_image_size'
wp option delete 'ivole_verified_owner'
wp option delete 'ivole_reviews_verified_page'
wp option delete 'woocommerce_currency_pos'
wp option delete 'ivole_form_header'
wp option delete 'ivole_form_body'
wp option delete 'ivole_form_comment_required'
wp option delete 'ivole_form_shop_rating'
wp option delete 'ivole_form_attach_media'
wp option delete 'ivole_form_rating_bar'
wp option delete 'ivole_form_geolocation'
wp option delete 'ivole_limit_reminders'
wp option delete 'ivole_enable_for_role'
wp option delete 'ivole_enabled_roles'
wp option delete 'ivole_enable_for_guests'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'ivole_exclude_free_products'
wp option delete 'ivole_form_color_bg'
wp option delete 'ivole_form_color_text'
wp option delete 'ivole_form_color_el'
wp option delete 'ivole_email_heading_coupon'
wp option delete 'ivole_email_subject_coupon'
wp option delete 'ivole_email_from'
wp option delete 'ivole_email_from_name'
wp option delete 'ivole_coupon_email_replyto'
wp option delete 'ivole_email_footer'
wp option delete 'ivole_mailer_review_reminder'
wp option delete 'ivole_email_coupon_color_bg'
wp option delete 'ivole_email_coupon_color_text'
wp option delete 'ivole_email_body_coupon'
wp option delete 'ivole_coupon_email_bcc'
wp option delete 'woocommerce_currency'
wp option delete 'ivole_enable_for'
wp option delete 'ivole_enabled_categories'
wp option delete 'ivole_product_feed_categories'
wp option delete 'ivole_product_feed_identifiers'
wp option delete 'ivole_google_brand_static'
wp option delete 'ivole_email_bcc'
wp option delete 'ivole_email_replyto'
wp option delete 'ivole_reviews_verified'
wp option delete 'ivole_track_reminder_open'
wp option delete 'ivole_shop_name'
wp option delete 'ivole_language'
wp option delete 'ivole_order_status'
wp option delete 'ivole_customer_consent'
wp option delete 'ivole_scheduler_type'
wp option delete 'ivole_delay'
wp option delete 'ivole_wa_message'
wp option delete 'ivole_product_feed_cron'
wp option delete 'ivole_product_reviews_feed_cron'
wp option delete 'ivole_product_feed'
wp option delete 'ivole_google_generate_xml_feed'
wp option delete 'ivole_activation_notice'
wp option delete 'ivole_google_field_map'
wp option delete 'ivole_google_min_review_length'
wp option delete 'ivole_excl_out_of_stock'
wp option delete 'ivole_feed_refresh'
wp option delete 'ivole_google_exclude_variable_parent'
wp option delete 'ivole_product_feed_file_url'
wp option delete 'ivole_product_feed_file_name'
wp option delete 'ivole_product_feed_variations'
wp option delete 'ivole_product_feed_attributes'
wp option delete 'ivole_excl_product_ids'
wp option delete 'ivole_product_feed_categories_exclude'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'ivole_feed_file_url'
wp option delete 'ivole_product_feed_enable_gtin'
wp option delete 'ivole_product_feed_enable_mpn'
wp option delete 'ivole_product_feed_enable_brand'
wp option delete 'ivole_product_feed_enable_identifier_exists'
wp option delete 'ivole_product_feed_enable_multipack'
wp option delete 'ivole_product_feed_enable_bundle'
wp option delete 'ivole_product_feed_enable_material'
wp option delete 'ivole_product_feed_enable_condition'
wp option delete 'ivole_product_feed_enable_id_str_dat'
wp option delete 'ivole_test_secret_key'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'ivole_customer_consent_text'
wp option delete 'ivole_avatars'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ivole_email_subject_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ivole_email_heading_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ivole_email_body_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ivole_email_from_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ivole_email_from_name_%'"
wp option delete 'ivole_qna_email_reply'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ivole_email_bcc_%'"
wp option delete 'ivole_questions_answers'
wp option delete 'ivole_qna_count'
wp option delete 'ivole_qna_captcha_secret_key'
wp option delete 'ivole_qna_captcha_site_key'
wp option delete 'ivole_qna_enable_captcha'
wp option delete 'ivole_qna_settings'
wp option delete 'ivole_attach_image_quantity'
wp option delete 'ivole_form_terms_page'
wp option delete 'ivole_form_expiry_period'
wp option delete 'ivole_ajax_reviews_per_page'
wp option delete 'ivole_ajax_reviews_sort'
wp option delete 'ivole_update_votes_meta'
wp option delete 'ivole_update_media_meta'
wp option delete 'ivole_enable_moderation'
wp option delete 'ivole_ajax_reviews'
wp option delete 'ivole_reviews_histogram'
wp option delete 'ivole_reviews_voting'
wp option delete 'ivole_trust_badge_floating'
wp option delete 'ivole_captcha_secret_key'
wp option delete 'ivole_verified_links'
wp option delete 'ivole_captcha_site_key'
wp option delete 'ivole_enable_captcha'
wp option delete 'ivole_store_stats'
wp option delete 'ivole_hidden_banners'
wp option delete 'ivole_version'
wp option delete 'ivole_reviews_milestone'
wp option delete 'ivole_age_restriction'
wp option delete 'ivole_coupon_tiers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ivole%'"
wp option delete 'ivole_email_subject'
wp option delete 'ivole_email_heading'
wp option delete 'ivole_email_body'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ivole_mailer_%'"
wp option delete 'ivole_review_forms'
wp option delete 'ivole_ajax_reviews_form'
wp option delete 'ivole_coupon_enable'
wp option delete 'ivole_incentivized_badge'
wp option delete 'ivole_review_extensions'
wp option delete 'ivole_trust_badge_floating_type'
wp option delete 'ivole_trust_badge_floating_location'
wp option delete 'ivole_local_reviews_page'
wp option delete 'active_sitewide_plugins'
wp option delete 'ivole_ignore_duplicate_siteurl_notice'
wp option delete 'ivole_siteurl'
wp option delete 'ivole_review_login_url'
wp option delete 'woocommerce_review_rating_verification_label'
wp option delete 'woocommerce_review_rating_verification_required'
wp option delete 'woocommerce_enable_review_rating'

# Delete Transients
wp transient delete 'cr_form_referrals_stats'
wp transient delete 'cr_csv_delimiter'
wp transient delete 'cr_download_media'
wp transient delete 'cr_download_media_frontend'

# Clear Cron Jobs
wp cron event delete 'ivole_send_reminder'
wp cron event delete 'cr_generate_product_reviews_feed_chunk'
wp cron event delete 'cr_generate_feed'
wp cron event delete 'cr_generate_prod_feed_chunk'
wp cron event delete 'cr_generate_prod_feed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cr-upload-temp-key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cr-upload-temp-key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cr-upload-temp-key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cr-upload-temp-key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_media_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_media_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_media_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_media_count'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'generated_from_review_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'generated_from_review_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'generated_from_review_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'generated_from_review_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ivole_auto_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ivole_auto_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ivole_auto_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ivole_auto_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cr_coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cr_coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cr_coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cr_coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_review_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_review_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_review_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_review_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_review_image2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_review_image2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_review_image2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_review_image2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cr_rev_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cr_rev_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cr_rev_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cr_rev_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cr_answer_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cr_answer_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cr_answer_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cr_answer_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cr_question_reg_upvoters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cr_question_reg_upvoters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cr_question_reg_upvoters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cr_question_reg_upvoters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cr_question_reg_downvoters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cr_question_reg_downvoters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cr_question_reg_downvoters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cr_question_reg_downvoters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cr_question_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cr_question_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cr_question_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cr_question_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cr_question_unreg_upvoters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cr_question_unreg_upvoters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cr_question_unreg_upvoters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cr_question_unreg_upvoters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cr_question_unreg_downvoters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cr_question_unreg_downvoters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cr_question_unreg_downvoters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cr_question_unreg_downvoters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managewoocommerce_page_wc-orderscolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managewoocommerce_page_wc-orderscolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managewoocommerce_page_wc-orderscolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managewoocommerce_page_wc-orderscolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_reply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_reply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_reply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_reply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_order_unve'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_order_unve'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_order_unve'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_order_unve'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_review_reg_upvoters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_review_reg_upvoters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_review_reg_upvoters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_review_reg_upvoters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_review_reg_downvoters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_review_reg_downvoters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_review_reg_downvoters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_review_reg_downvoters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_review_unreg_upvoters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_review_unreg_upvoters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_review_unreg_upvoters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_review_unreg_upvoters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_review_unreg_downvoters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_review_unreg_downvoters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_review_unreg_downvoters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_review_unreg_downvoters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_review_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_review_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_review_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_review_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_order_locl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_order_locl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_order_locl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_order_locl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_order_priv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_order_priv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_order_priv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_order_priv'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_review_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_review_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_review_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_review_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_review_video2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_review_video2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_review_video2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_review_video2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
