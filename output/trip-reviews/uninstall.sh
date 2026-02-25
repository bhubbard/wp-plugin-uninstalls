#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trpre_settings'
wp option delete 'trpre_db_version'
wp option delete 'woocommerce_currency'
wp option delete 'wp_travel_engine_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'trpre_%'"

# Clear Cron Jobs
wp cron event delete 'trpre_cleanup_spam_reviews'
wp cron event delete 'tre_cleanup_spam_reviews'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trpre_trip_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trpre_trip_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trpre_trip_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trpre_trip_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trpre_reviewer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trpre_reviewer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trpre_reviewer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trpre_reviewer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trpre_reviewer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trpre_reviewer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trpre_reviewer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trpre_reviewer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trpre_reviewer_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trpre_reviewer_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trpre_reviewer_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trpre_reviewer_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trpre_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trpre_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trpre_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trpre_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trpre_custom_ratings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trpre_custom_ratings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trpre_custom_ratings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trpre_custom_ratings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trpre_admin_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trpre_admin_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trpre_admin_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trpre_admin_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_travel_engine_setting_trip_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_travel_engine_setting_trip_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_travel_engine_setting_trip_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_travel_engine_setting_trip_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tre_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tre_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tre_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tre_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tre_last_review_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tre_last_review_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tre_last_review_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tre_last_review_date'"
