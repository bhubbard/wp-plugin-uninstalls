#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popup_alert_display_options'
wp option delete 'popup_alert_social_options'
wp option delete 'popup_alert_input_examples'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nelio_nice_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nelio_nice_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nelio_nice_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nelio_nice_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popup_alert'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popup_alert'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popup_alert'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popup_alert'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sl-meta-box-sidebar-pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sl-meta-box-sidebar-pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sl-meta-box-sidebar-pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sl-meta-box-sidebar-pages'"
