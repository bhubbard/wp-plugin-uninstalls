#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_tab_gdpr_promo_label'
wp option delete 'wc_settings_tab_gdpr_top_layer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_gdprpromo_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_gdprpromo_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_gdprpromo_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_gdprpromo_checkbox'"
