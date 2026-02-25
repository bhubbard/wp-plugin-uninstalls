#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_product_tabs_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-dont-check-license' OR option_name LIKE '_site_transient_%-dont-check-license'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_sptb_override_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_sptb_override_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_sptb_override_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sptb_override_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sptb_conditions_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sptb_conditions_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sptb_conditions_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sptb_conditions_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_sptb_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_sptb_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_sptb_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sptb_field_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sptb_display_tab_globally'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sptb_display_tab_globally'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sptb_display_tab_globally'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sptb_display_tab_globally'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sptb_tab_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sptb_tab_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sptb_tab_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sptb_tab_icon'"
