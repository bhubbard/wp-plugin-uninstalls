#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atkp_version_plugin'
wp option delete 'atkp_redirect_to_welcome'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cron_lastdatacheck'"
wp option delete 'atkp_option_supported_blocks'
wp option delete 'atkp_newsletter_dismissed'
wp option delete 'atkp_newsletter_subscribed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disablestyles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_showshopname'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_showstarrating'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_linkrating'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_linkimage'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_showprice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_showbaseprice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_showpricediscount'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hideemptystars'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hideemptyrating'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hideprocontra'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_primbtn_image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secbtn_image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_short_title_length'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_description_length'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feature_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_boxcontent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_productpage_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_affiliatechar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_moreoffers'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_moreoffers_template'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_moreoffers_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_moreoffers_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_moreoffers_includemainoffer'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_outputashtml'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pricecomparisongroupshops'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hideerrormessages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_ajax_loading'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_ajax_handler'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_showadminsection'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_score1_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_score2_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_score3_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_score4_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_score5_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_nota_template'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_nota_template'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_nota_disable_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_list_default_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crontype'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cron_from'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cron_to'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_check_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_recipient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cache_duration'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_posttypes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_additional_shortcode_button'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_woo_ean_field'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_woo_keytype'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_loglevel'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_product_category_taxonomy'"
wp option delete 'default_product_cat'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sitekey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version_posts_lists'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version_posts_products'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version_posts_queues'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_defaultproductstate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_product_importimage'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_searchform_price_prefix'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_searchform_price_suffix'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_title_link_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_no'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_yes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_customfields_product'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_udf_product'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_udt_product'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp transient delete 'atkp_license'
wp transient delete 'atkp_discount'
wp transient delete 'atkp_add_ons_feed'
wp transient delete 'update_plugins'

