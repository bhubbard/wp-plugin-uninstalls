#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wvasp_enable_variations_as_product'
wp option delete 'wvasp_disable_shop_page_single_variation'
wp option delete 'wvasp_disable_category_page_single_variation'
wp option delete 'wvasp_disable_tag_page_single_variation'
wp option delete 'wvasp_disable_search_page_single_variation'
wp option delete 'wvasp_hide_parent_products'
wp option delete 'wvasp_exclude_parent_products_forcefully'
wp option delete 'wvasp_exclude_category_fields'
wp option delete 'wvasp_exclude_child_category_fields'
wp option delete 'wvasp_exclude_tag_fields'
wp option delete 'wvasp_legacy_product_exclude'
wp option delete 'wvasp_batch_processing_amount'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_insights_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_insights_last_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_insights_last_tracking_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_insights_skip'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_insights_previously_skip'"

# Clear Cron Jobs
wp cron event delete 'wvasp_terms_update_schedule'
wp cron event delete 'wvasp_schedule_product_exclusion'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wvasp_single_exclude_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wvasp_single_exclude_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wvasp_single_exclude_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wvasp_single_exclude_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wvasp_single_variation_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wvasp_single_variation_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wvasp_single_variation_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wvasp_single_variation_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wvasp_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wvasp_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wvasp_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wvasp_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wvasp_single_exclude_varations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wvasp_single_exclude_varations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wvasp_single_exclude_varations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wvasp_single_exclude_varations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wvasp_single_hide_parent_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wvasp_single_hide_parent_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wvasp_single_hide_parent_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wvasp_single_hide_parent_product'"
