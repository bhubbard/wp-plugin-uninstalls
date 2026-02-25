#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wlfmc_notice_disabled'
wp option delete 'wlfmc_wishlist_activation_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-days'"
wp option delete 'wlfmc_premium_version'
wp option delete 'wlfmc-skip-wizard-notice'
wp option delete 'wlfmc-finish-wizard-notice'
wp option delete 'smart-wishlist-for-more-convert_tracking_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-notice'"
wp option delete 'wlfmc_need_update_tables'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'wlfmc_wishlist_page_id'
wp option delete 'wlfmc_wizard'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'wlfmc_remove_all_data'
wp option delete 'wlfmc_tabbed_page_id'
wp option delete 'wlfmc_waitlist_page_id'
wp option delete 'wlfmc_multi_list_page_id'
wp option delete 'wlfmc_db_version'
wp option delete 'wlfmc_version'
wp option delete 'wlfmc_wishlist_old_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_endpoint_previous'"
wp option delete 'woocommerce_myaccount_wlfmc_wishlist_endpoint'
wp option delete 'wlfmc_unsubscribed_users'
wp option delete 'WpFastestCacheExclude'
wp option delete 'rewrite_rules'
wp option delete 'wlfmc_options'
wp option delete 'eh_pricing_discount_cart_catalog_mode'
wp option delete 'elex_catalog_remove_addtocart_product'
wp option delete 'eh_pricing_discount_price_catalog_mode_exclude_admin'
wp option delete 'wlfmc_us_core_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'woocommerce_enable_ajax_add_to_cart'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete '_wlfmc_wishlist_activation_redirect'
wp transient delete 'wlfmc_mysql_timezone'
wp transient delete '_wlfmc_update_wishlists_data'
wp transient delete 'wlfmc_hidden_products'

# Clear Cron Jobs
wp cron event delete 'wlfmc_send_offer_emails'
wp cron event delete 'wlfmc_wishlist_delete_expired_wishlists'
wp cron event delete 'wlfmc_delete_expired_coupons'
wp cron event delete 'wlfmc_send_automation_emails'
wp cron event delete 'wlfmc_send_automation_trigger_emails'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlfmc_list_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlfmc_list_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlfmc_list_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlfmc_list_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_hide_addtocart_catalog_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_adjustment_exclude_admin_catalog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_rule_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_rule_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_rule_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_rule_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_hide_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_hide_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_hide_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_hide_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_hide_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_hide_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_hide_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_hide_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_hide_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_hide_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_hide_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_hide_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_is_hide_addtocart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_is_hide_addtocart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_is_hide_addtocart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_is_hide_addtocart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_custom_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_custom_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_custom_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_custom_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_custom_button_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_custom_button_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_custom_button_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_custom_button_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_contact7_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_contact7_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_contact7_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_contact7_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_hide_for_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_hide_for_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_hide_for_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_hide_for_countries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afwhp_apply_on_all_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afwhp_apply_on_all_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afwhp_apply_on_all_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afwhp_apply_on_all_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlfmc_shopengine_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlfmc_shopengine_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlfmc_shopengine_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlfmc_shopengine_dismissed'"
