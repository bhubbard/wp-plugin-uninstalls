#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'diu_wc_tracking_status'
wp option delete 'diu_wc_send_email'
wp option delete 'diu_wc_use_bootstrap'
wp option delete 'diu_wc_include_notes'
wp option delete 'diu_wc_custom_number_tracking'
wp option delete 'diu_wc_include_plugin_seguimiento'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status_tracking_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status_tracking_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status_tracking_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status_tracking_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diurvan_wc_tracking_orden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diurvan_wc_tracking_orden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diurvan_wc_tracking_orden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diurvan_wc_tracking_orden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_tracking_number_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_tracking_number_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_tracking_number_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_tracking_number_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seguimiento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seguimiento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seguimiento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seguimiento'"
