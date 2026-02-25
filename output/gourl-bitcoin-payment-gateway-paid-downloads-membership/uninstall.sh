#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%prev_version'"
wp option delete 'bj_lazy_load_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%currencyconverterapi_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%page_files_intro'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%page_payperview_intro'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ppvLevel'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%page_membership_intro'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ppmLevel'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%page_products_intro'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%private_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%public_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ppmProfile'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ppmExpiry'"

