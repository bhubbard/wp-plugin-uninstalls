#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'disco_settings'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'DISCO_DB_VERSION'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'disco_review_notice'
wp option delete 'disco_review_notice_next_show_time'
wp option delete 'disco_wpml_notice_hidden'
wp option delete 'disco_rp-wcdpd_notice_hidden'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cached_promos' OR option_name LIKE '_site_transient_%_cached_promos'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disco_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disco_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disco_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disco_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disco_promotional_holiday_banner_2025'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disco_promotional_holiday_banner_2025'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disco_promotional_holiday_banner_2025'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disco_promotional_holiday_banner_2025'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disco_compatible_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disco_compatible_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disco_compatible_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disco_compatible_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disco_feature_unlock_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disco_feature_unlock_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disco_feature_unlock_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disco_feature_unlock_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disco_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disco_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disco_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disco_review_notice_dismissed'"
