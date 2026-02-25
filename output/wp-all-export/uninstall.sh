#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_all_export_queue_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_all_export_acf_flexible_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpae_dismiss_warnings_%'"
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'wpai_wpae_scheduling_license_site_limit'
wp option delete 'wpae_modal_review_dismissed'
wp option delete 'wpae_modal_review_dismissed_time'
wp option delete 'wpae_modal_review_dismissed_modals'
wp option delete 'wpae_modal_review_dismissed_times'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Options'"
wp option delete 'wp_all_export_db_version'
wp option delete 'wp_all_export_free_db_version'
wp option delete 'wp_all_export_free_addons_not_included'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
