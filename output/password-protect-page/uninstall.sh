#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppwp_previous_protected_categories'
wp option delete 'ppwp_previous_protected_tags'
wp option delete 'wp_protect_password_license_key'
wp option delete 'wp_protect_password_licensed'
wp option delete 'WpFastestCacheExclude'
wp option delete 'ppw_data_checksum'
wp option delete 'wpfolio_ppwp_anylc_redirect'
wp option delete 'wpfolio_ppwp_anylc_site_uid'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'ppwp_sidebar_content'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpfolio_ppwp_anylc_optin_notice_%' OR option_name LIKE '_site_transient_wpfolio_ppwp_anylc_optin_notice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpfolio_ppwp_state_%' OR option_name LIKE '_site_transient_wpfolio_ppwp_state_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppwp_post_password_bk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppwp_post_password_bk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppwp_post_password_bk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppwp_post_password_bk'"
