#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apf_plugin_default_product_status'
wp option delete 'apf_plugin_page_id'
wp option delete 'apf_plugin_template'
wp option delete 'apf_reviews_installed_on'
wp option delete 'apf_total_open_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apf_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apf_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apf_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apf_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apf_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apf_reviews_already_did'"
