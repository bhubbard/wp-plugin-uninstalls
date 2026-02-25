#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_linkshare_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_linkshare_generate_timeout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_linkshare_advertiser_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_result_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_store_country'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_result_column'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_result_row'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ipinfodb_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_store_result_item'"

# Delete Transients
wp transient delete 'tunesly_hash'
wp transient delete 'ipinfodb_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_custom_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_custom_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_custom_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_custom_keyword'"
