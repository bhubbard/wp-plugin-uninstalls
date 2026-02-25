#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'heateor_sss'
wp option delete 'heateor_sss_twitcount_notification_read'
wp option delete 'heateor_sss_gdpr_notification_read'
wp option delete 'heateor_sss_version'
wp option delete 'heateor_sss_custom_url_shares'
wp option delete 'heateor_sss_homepage_shares'

# Delete Transients
wp transient delete 'heateor-sss-admin-notice-on-activation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_heateor_sss_share_count_%' OR option_name LIKE '_site_transient_heateor_sss_share_count_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_heateor_sss_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_heateor_sss_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_heateor_sss_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_heateor_sss_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_heateor_sss_bitly_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_heateor_sss_bitly_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_heateor_sss_bitly_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_heateor_sss_bitly_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_heateor_sss_shares_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_heateor_sss_shares_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_heateor_sss_shares_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_heateor_sss_shares_meta'"
