#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fts_version'
wp option delete 'fts_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'feed_them_social_license_keys'
wp option delete 'fts_facebook_custom_api_token_user_id'
wp option delete 'fts_facebook_custom_api_token'
wp option delete 'fts_facebook_custom_api_token_user_id_biz'
wp option delete 'fts_facebook_custom_api_token_biz'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"

# Delete Transients
wp transient delete 'fts_activated'
wp transient delete 'fts_updated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fts_t_%' OR option_name LIKE '_site_transient_fts_t_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fts_p_%' OR option_name LIKE '_site_transient_fts_p_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_edd_api_request_%' OR option_name LIKE '_site_transient_edd_api_request_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fts_slick_ignore_rating_notice_nag2024'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fts_slick_ignore_rating_notice_nag2024'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fts_slick_ignore_rating_notice_nag2024'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fts_slick_ignore_rating_notice_nag2024'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fts_feed_options_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fts_feed_options_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fts_feed_options_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fts_feed_options_array'"
