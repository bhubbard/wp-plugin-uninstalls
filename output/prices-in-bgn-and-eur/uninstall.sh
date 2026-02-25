#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prices_bgn_eur_active'
wp option delete 'pbe_license_key'
wp option delete 'pbe_secondary_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pbe_euro_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pbe_euro_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pbe_euro_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pbe_euro_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bgn_eur_converted_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bgn_eur_converted_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bgn_eur_converted_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bgn_eur_converted_date'"
