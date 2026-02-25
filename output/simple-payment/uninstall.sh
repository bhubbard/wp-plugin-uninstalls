#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'sp_license'
wp option delete 'sp'
wp option delete 'sp_db_version'
wp option delete 'sp_uninstall'
wp option delete 'recently_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp transient delete 'sp_message'
wp transient delete 'sp_license_issue'
wp transient delete 'sp_updated'
wp transient delete 'sp_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sp_%' OR option_name LIKE '_site_transient_sp_%'"
wp transient delete 'sp-payment-last'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sp-msg-%' OR option_name LIKE '_site_transient_sp-msg-%'"
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'sp_cron'
wp cron event delete 'sp_cron_purge'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_provider_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_provider_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_provider_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_provider_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_sp_transaction_id%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_sp_transaction_id%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_sp_transaction_id%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sp_transaction_id%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpjb_stripe_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpjb_stripe_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpjb_stripe_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpjb_stripe_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
