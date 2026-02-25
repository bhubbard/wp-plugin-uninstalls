#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_conditions_admin_notices'
wp option delete 'woocommerce_conditions_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_added'"
wp option delete 'wccs_settings'
wp option delete 'wccs_version'
wp option delete 'wccs_version_upgraded_from'
wp option delete 'wccs_install_timestamp'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'asnp_ewd_review'

# Delete Transients
wp transient delete 'wccs_installing'
wp transient delete 'wccs_discounted_products'
wp transient delete 'wccs_can_read_variation_cached_prices_hash'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wccs_can_read_variation_cached_prices_hash_%' OR option_name LIKE '_site_transient_wccs_can_read_variation_cached_prices_hash_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_ewd_sale_badges_free_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_ewd_sale_badges_free_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_ewd_sale_badges_free_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_ewd_sale_badges_free_notice'"
