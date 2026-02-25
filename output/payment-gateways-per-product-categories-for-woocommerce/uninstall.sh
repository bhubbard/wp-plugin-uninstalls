#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_pgpp_enabled'
wp option delete 'alg_wc_pgpp_advanced_add_hook'
wp option delete 'alg_wc_pgpp_products_add_variations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_section_enabled'"
wp option delete 'alg_wc_pgpp_countries_restriction_number'
wp option delete 'alg_wc_pgpp_countries_remove_enabled'
wp option delete 'alg_wc_pgpp_countries_combine_condition'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pgpp_categories_include_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pgpp_categories_exclude_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pgpp_tags_include_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pgpp_tags_exclude_%'"
wp option delete 'alg_wc_pgpp_advanced_fallback_gateway'
wp option delete 'alg_wc_pgpp_advanced_fallback_gateway_enabled'
wp option delete 'alg_wc_pgpp_pay_titles'
wp option delete 'alg_wc_pgpp_products_section_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_pgpp_version'

