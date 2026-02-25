-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ffw_general_settings', 'ffw_dismiss_discounted_notice', 'ffw_coupon_notice_hide', 'ffw_review_notice_next_show_time', 'ffw_review_notice', 'ffw_shop_page_faqs', 'ffw_cart_page_faqs', 'ffw_checkout_page_faqs', 'ffw_post_generation');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'ffw-plugin-info-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ffw_review_notice_dismissed', 'ffw_is_global_faq', 'ffw_product_faq_post_ids', 'ffw_cat_faq_post_ids', 'ffw_tag_faq_post_ids', 'ffw_faqs_list', 'ffw_customer_name', 'ffw_customer_email', 'ffw_customer_question_location', 'ffw_post_ids_for_comment');
DELETE FROM wp_usermeta WHERE meta_key IN ('ffw_review_notice_dismissed', 'ffw_is_global_faq', 'ffw_product_faq_post_ids', 'ffw_cat_faq_post_ids', 'ffw_tag_faq_post_ids', 'ffw_faqs_list', 'ffw_customer_name', 'ffw_customer_email', 'ffw_customer_question_location', 'ffw_post_ids_for_comment');
DELETE FROM wp_termmeta WHERE meta_key IN ('ffw_review_notice_dismissed', 'ffw_is_global_faq', 'ffw_product_faq_post_ids', 'ffw_cat_faq_post_ids', 'ffw_tag_faq_post_ids', 'ffw_faqs_list', 'ffw_customer_name', 'ffw_customer_email', 'ffw_customer_question_location', 'ffw_post_ids_for_comment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ffw_review_notice_dismissed', 'ffw_is_global_faq', 'ffw_product_faq_post_ids', 'ffw_cat_faq_post_ids', 'ffw_tag_faq_post_ids', 'ffw_faqs_list', 'ffw_customer_name', 'ffw_customer_email', 'ffw_customer_question_location', 'ffw_post_ids_for_comment');

