#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpsfw_install_date'
wp option delete 'mpsfw_review_dismissed_time'
wp option delete 'mpsfw_settings'
wp option delete 'mpsfw_plugin_ver'
wp option delete 'mpsfw_index_table_version'
wp option delete 'mpsfw_reindex_version'
wp option delete 'qtranslate_enabled_languages'
wp option delete 'active_sitewide_plugins'
wp option delete 'mpsfw_search_query_args'
wp option delete 'sep_exclude'

# Delete Transients
wp transient delete 'mpsfw_index_processed'

# Clear Cron Jobs
wp cron event delete 'mpsfw_reindex_table'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_conditional_all_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_conditional_all_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_conditional_all_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_conditional_all_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_conditional_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_conditional_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_conditional_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_conditional_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_conditional_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_conditional_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_conditional_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_conditional_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dfrps_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dfrps_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dfrps_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dfrps_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pvbur_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pvbur_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pvbur_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pvbur_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pvbur_invisible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pvbur_invisible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pvbur_invisible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pvbur_invisible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dfw_enable_deal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dfw_enable_deal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dfw_enable_deal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dfw_enable_deal'"
