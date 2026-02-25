#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aftership_option_name'
wp option delete 'automizely_aftership_plugin_actived'
wp option delete 'aftership_api_enabled'
wp option delete 'aftership_prices_include_tax'
wp option delete 'aftership_weight_unit'
wp option delete 'aftership_dimension_unit'
wp option delete 'aftership_force_ssl_checkout'
wp option delete 'woocommerce_weight_unit'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc-aftership-plugin%' OR option_name LIKE '_site_transient_wc-aftership-plugin%'"

# Clear Cron Jobs
wp cron event delete 'vi_at_importer_scheduled_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_postal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_postal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_postal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_postal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_shipdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_shipdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_shipdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_shipdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_destination_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_destination_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_destination_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_destination_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aftership_wp_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aftership_wp_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aftership_wp_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aftership_wp_api_key'"
