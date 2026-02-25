#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yews_settings'
wp option delete 'yews_cron_setup'
wp option delete 'yews_footer_credits'
wp option delete 'gdlr_general'
wp option delete 'yews_analytics_code'
wp option delete 'yews_phone_code'
wp option delete 'yews_phoneno_code'
wp option delete 'yews_remarketing_code'
wp option delete 'yews_codes'
wp option delete 'yews_seo'
wp option delete 'yews_checks'

# Clear Cron Jobs
wp cron event delete 'yews_daily_checks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yews_business_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yews_business_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yews_business_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yews_business_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yews_business_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yews_business_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yews_business_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yews_business_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yews_business_street_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yews_business_street_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yews_business_street_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yews_business_street_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yews_business_suburb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yews_business_suburb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yews_business_suburb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yews_business_suburb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yews_business_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yews_business_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yews_business_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yews_business_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yews_business_post_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yews_business_post_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yews_business_post_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yews_business_post_code'"
