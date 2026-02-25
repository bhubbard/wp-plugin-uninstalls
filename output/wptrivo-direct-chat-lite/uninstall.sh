#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptwdclt_whtapp_widget_settings_opt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptwdclt_wht_account_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptwdclt_wht_account_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptwdclt_wht_account_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptwdclt_wht_account_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptwdclt_wht_widget_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptwdclt_wht_widget_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptwdclt_wht_widget_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptwdclt_wht_widget_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptwdclt_wht_widget_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptwdclt_wht_widget_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptwdclt_wht_widget_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptwdclt_wht_widget_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptwdclt_wht_wc_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptwdclt_wht_wc_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptwdclt_wht_wc_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptwdclt_wht_wc_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptwdclt_wht_wc_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptwdclt_wht_wc_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptwdclt_wht_wc_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptwdclt_wht_wc_position'"
