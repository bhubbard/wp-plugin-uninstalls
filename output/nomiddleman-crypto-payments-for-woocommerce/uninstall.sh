#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nmm_hd_table_version'
wp option delete 'my_flash_notices'
wp option delete 'r_notice_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'active_sitewide_plugins'
wp option delete 'ReduxFrameworkPlugin'
wp option delete 'redux-framework-tracking'
wp option delete 'redux_version_upgraded_from'
wp option delete 'redux_support_hash'
wp option delete 'ReduxFrameworkPlugin_ACTIVATED_NOTICES'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"
wp transient delete 'redux_tracking_cache'
wp transient delete 'redux-extensions-fetch'
wp transient delete 'redux_contributors'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'NMM_cron_hook'
wp cron event delete 'redux_tracking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crypto_type_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crypto_type_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crypto_type_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crypto_type_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crypto_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crypto_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crypto_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crypto_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%'"
