#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bosedd_version'
wp option delete 'bosedd_options'
wp option delete 'badgeos_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bosedd_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bosedd_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bosedd_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bosedd_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_edd_trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_edd_trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_edd_trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_edd_trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosedd_download_for_review_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosedd_download_for_review_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosedd_download_for_review_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosedd_download_for_review_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosedd_specific_download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosedd_specific_download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosedd_specific_download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosedd_specific_download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosedd_download_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosedd_download_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosedd_download_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosedd_download_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosedd_download_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosedd_download_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosedd_download_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosedd_download_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosedd_commission_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosedd_commission_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosedd_commission_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosedd_commission_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosedd_cart_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosedd_cart_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosedd_cart_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosedd_cart_price'"
