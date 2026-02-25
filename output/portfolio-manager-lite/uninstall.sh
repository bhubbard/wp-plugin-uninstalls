#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'otw_pm_portfolio_details'
wp option delete 'otw_pm_lists'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'otw_lc_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dnms'"
wp option delete 'otw_pm_plugin_options'
wp option delete 'otw_pml_rewrite_rules'

# Delete Transients
wp transient delete 'otw_upd_plug'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otw_pm_meta_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otw_pm_meta_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otw_pm_meta_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otw_pm_meta_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otw_pm_tabs_meta_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otw_pm_tabs_meta_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otw_pm_tabs_meta_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otw_pm_tabs_meta_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otw_pm_options_meta_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otw_pm_options_meta_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otw_pm_options_meta_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otw_pm_options_meta_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'otw_pm_portfolio_detail_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'otw_pm_portfolio_detail_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'otw_pm_portfolio_detail_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'otw_pm_portfolio_detail_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otw_pm_light_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otw_pm_light_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otw_pm_light_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otw_pm_light_id'"
