#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amwalpay_cf7_options'
wp option delete 'amwalpay_cf7_theme_message'
wp option delete 'amwalpay_cf7_theme_error_message'

# Delete Transients
wp transient delete 'amwalpay_cf7_smart_box_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amwalpay_cf7_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amwalpay_cf7_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amwalpay_cf7_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amwalpay_cf7_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amwalpay_cf7_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amwalpay_cf7_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amwalpay_cf7_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amwalpay_cf7_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amwalpay_cf7_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amwalpay_cf7_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amwalpay_cf7_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amwalpay_cf7_price'"
