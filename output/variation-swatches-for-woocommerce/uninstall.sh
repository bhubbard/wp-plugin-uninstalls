#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tawcvs_restore_attributes_time'
wp option delete 'tawcvs_backup_attributes_time'
wp option delete 'aovup_dismissed_swatch'
wp option delete 'woosuite_variation_swatches_option'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'wcvs_current_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcvs_welcome_page_shown_v_%'"

# Delete Transients
wp transient delete 'tawcvs_attribute_taxonomies'
wp transient delete 'wc_attribute_taxonomies'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_0' OR option_name LIKE '_site_transient_%_0'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_1' OR option_name LIKE '_site_transient_%_1'"
wp transient delete 'woosuite-all-plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variation_swatches_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variation_swatches_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variation_swatches_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variation_swatches_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_black_friday_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_black_friday_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_black_friday_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_black_friday_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show-tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show-tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show-tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show-tooltip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tooltip-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tooltip-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tooltip-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tooltip-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tooltip-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tooltip-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tooltip-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tooltip-image'"
