#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woorelated_wtitle'
wp option delete 'woorelated_nproducts'
wp option delete 'woorelated_basedon'
wp option delete 'woorelated_exclude'
wp option delete 'woorelated_slider'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrprr_peachpay_banner_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrprr_peachpay_banner_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrprr_peachpay_banner_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrprr_peachpay_banner_dismissed'"
