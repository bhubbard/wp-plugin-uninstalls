#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_actr_redirect_to_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_actr_redirect_to_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_actr_redirect_to_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_actr_redirect_to_checkout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_atcr_redirect_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_atcr_redirect_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_atcr_redirect_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_atcr_redirect_id'"
