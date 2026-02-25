#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WP_EX_FONTS_LIST'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rwp_google_fonts_%' OR option_name LIKE '_site_transient_rwp_google_fonts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gwf_raw_%' OR option_name LIKE '_site_transient_gwf_raw_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscribr-send-html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscribr-send-html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscribr-send-html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscribr-send-html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscribr-terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscribr-terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscribr-terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscribr-terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscribr-pause'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscribr-pause'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscribr-pause'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscribr-pause'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscribr-unsubscribe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscribr-unsubscribe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscribr-unsubscribe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscribr-unsubscribe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscribr_opt_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscribr_opt_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscribr_opt_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscribr_opt_out'"
