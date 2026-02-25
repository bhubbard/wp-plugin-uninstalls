#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_seedbank_version'
wp option delete 'seedbank_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_scientific_name_children'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_exchange_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_exchange_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_exchange_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_exchange_expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_exchange_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_exchange_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_exchange_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_exchange_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_common_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_common_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_common_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_common_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_exchange_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_exchange_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_exchange_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_exchange_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_seed_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_seed_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_seed_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_seed_expiry_date'"
