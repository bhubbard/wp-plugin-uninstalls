#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contentgecko_settings'
wp option delete 'contentgecko_api_key'
wp option delete 'woocommerce_currency_pos'

# Delete Transients
wp transient delete 'contentgecko_recent_logs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_product_children_%' OR option_name LIKE '_site_transient_wc_product_children_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_var_prices_%' OR option_name LIKE '_site_transient_wc_var_prices_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contentgecko_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contentgecko_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contentgecko_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contentgecko_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contentgecko_cluster_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contentgecko_cluster_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contentgecko_cluster_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contentgecko_cluster_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contentgecko_last_payload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contentgecko_last_payload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contentgecko_last_payload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contentgecko_last_payload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contentgecko_last_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contentgecko_last_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contentgecko_last_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contentgecko_last_synced'"
