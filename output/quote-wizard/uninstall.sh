#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdsqw_form_dynamic_fields'
wp option delete 'wdsqw_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wdsqw_oos_error_%' OR option_name LIKE '_site_transient_wdsqw_oos_error_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdsqw_enable_quote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdsqw_enable_quote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdsqw_enable_quote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdsqw_enable_quote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdsqw_enabled_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdsqw_enabled_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdsqw_enabled_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdsqw_enabled_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdsqw_enable_quote_oos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdsqw_enable_quote_oos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdsqw_enable_quote_oos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdsqw_enable_quote_oos'"
