#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sip_version_value'
wp option delete 'woocommerce_default_country'
wp option delete 'sip_rswc_color_options'
wp option delete 'sip_rswc_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sip_rswc_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sip_rswc_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sip_rswc_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sip_rswc_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
