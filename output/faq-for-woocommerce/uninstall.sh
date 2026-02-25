#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ffw_general_settings'
wp option delete 'ffw_dismiss_discounted_notice'
wp option delete 'ffw_coupon_notice_hide'
wp option delete 'ffw_review_notice_next_show_time'
wp option delete 'ffw_review_notice'
wp option delete 'ffw_shop_page_faqs'
wp option delete 'ffw_cart_page_faqs'
wp option delete 'ffw_checkout_page_faqs'
wp option delete 'ffw_post_generation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ffw-plugin-info-%' OR option_name LIKE '_site_transient_ffw-plugin-info-%'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_review_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_is_global_faq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_is_global_faq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_is_global_faq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_is_global_faq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_product_faq_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_product_faq_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_product_faq_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_product_faq_post_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_cat_faq_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_cat_faq_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_cat_faq_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_cat_faq_post_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_tag_faq_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_tag_faq_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_tag_faq_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_tag_faq_post_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_faqs_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_faqs_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_faqs_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_faqs_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_customer_question_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_customer_question_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_customer_question_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_customer_question_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_post_ids_for_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_post_ids_for_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_post_ids_for_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_post_ids_for_comment'"
