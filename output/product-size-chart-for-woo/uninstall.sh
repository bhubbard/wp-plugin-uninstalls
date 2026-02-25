#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_sc_setting'
wp option delete 'pscw_maybe_re_migrate'
wp option delete 'pscw_size_charts_editing'
wp option delete 'pscw_setup_wizard'
wp option delete 'pscw_maybe_migrate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'villatheme_call'
wp transient delete 'villatheme_ads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pscw_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pscw_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pscw_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pscw_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pscw_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pscw_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pscw_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pscw_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_sc_size_chart_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_sc_size_chart_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_sc_size_chart_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_sc_size_chart_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pscw_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pscw_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pscw_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pscw_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pscw_interface'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pscw_interface'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pscw_interface'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pscw_interface'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pscw_current_editing_sc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pscw_current_editing_sc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pscw_current_editing_sc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pscw_current_editing_sc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pscw_sizechart_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pscw_sizechart_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pscw_sizechart_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pscw_sizechart_mode'"
