#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gswc_feed_last_generated'
wp option delete 'gswc_feed_product_count'
wp option delete 'gswc_installed_time'
wp option delete 'gswc_feed_enabled'
wp option delete 'gswc_feed_limit'
wp option delete 'gswc_feed_include_outofstock'
wp option delete 'gswc_feed_exclude_categories'
wp option delete 'gswc_feed_exclude_tags'
wp option delete 'gswc_feed_min_price'
wp option delete 'gswc_feed_max_price'
wp option delete 'gswc_feed_store_name'
wp option delete 'gswc_feed_default_brand'
wp option delete 'gswc_feed_default_condition'
wp option delete 'gswc_feed_title_prefix'
wp option delete 'gswc_feed_title_suffix'
wp option delete 'gswc_feed_desc_prefix'
wp option delete 'gswc_feed_desc_suffix'
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gswc_feed_%'"

# Delete Transients
wp transient delete 'gswc_last_action'

# Clear Cron Jobs
wp cron event delete 'gswc_generate_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gswc_pro_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gswc_pro_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gswc_pro_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gswc_pro_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gswc_pro_notice_snoozed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gswc_pro_notice_snoozed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gswc_pro_notice_snoozed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gswc_pro_notice_snoozed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gswc_widget_positioned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gswc_widget_positioned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gswc_widget_positioned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gswc_widget_positioned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_gswc_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_gswc_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_gswc_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_gswc_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gswc_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gswc_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gswc_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gswc_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gswc_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gswc_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gswc_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gswc_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gswc_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gswc_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gswc_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gswc_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gswc_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gswc_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gswc_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gswc_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gswc_identifier_exists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gswc_identifier_exists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gswc_identifier_exists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gswc_identifier_exists'"
