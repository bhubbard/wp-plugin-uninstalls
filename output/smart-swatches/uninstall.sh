#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'smart_swatches_version'
wp option delete 'smart_swatches_first_version'
wp option delete 'smart_swatches_activation_date'
wp option delete 'smart_swatches_ssp_settings'
wp option delete 'smart_swatches_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%'"
wp option delete 'sp_swatches_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'smart_swatches_%'"
wp option delete 'woocommerce_cart_redirect_after_add'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'smart_swatches_smart_swatches_attr_%'"
wp option delete 'shapedplugin_offer_banner_dismissed_black_friday_2025'
wp option delete 'shapedplugin_offer_banner_dismissed_new_year_2026'

# Delete Transients
wp transient delete 'swatches_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_smart_swatches_%' OR option_name LIKE '_site_transient_smart_swatches_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssp_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssp_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssp_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssp_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ssp_attribute_options_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ssp_attribute_options_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ssp_attribute_options_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ssp_attribute_options_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_smart_swatches_framework_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_smart_swatches_framework_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_smart_swatches_framework_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_smart_swatches_framework_errors_%'"
