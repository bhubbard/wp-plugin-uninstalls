#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbr_pro_update_ignore_377'
wp option delete 'product_visibility'
wp option delete 'wpcbr_hide_restricted_product_variation'
wp option delete 'wpcbr_make_non_purchasable'
wp option delete 'wpcbr_hide_product_price'
wp option delete 'wpcbr_debug_mode'
wp option delete 'wpcbr_message_position'
wp option delete 'wpcbr_default_message'
wp option delete 'wpcbr_force_geo_location'
wp option delete 'wpcbr_redirect_404_page'
wp option delete 'wpcbr_choose_the_page_to_redirect'
wp option delete 'cbr_notice_ignore'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_data_selector'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_optin_email_notification'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_usage_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_tracker_last_send'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fz_country_restriction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fz_country_restriction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fz_country_restriction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fz_country_restriction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restricted_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restricted_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restricted_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restricted_countries'"
