#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nta_tele_widget_display'
wp option delete 'nta_tele_widget_styles'
wp option delete 'nta_telebutton_setting'
wp option delete 'nta_tele_woocommerce'
wp option delete 'nta_tele_analytics'
wp option delete 'njt_tele_first_time_active'
wp option delete 'njt_tele_version'
wp option delete 'default_post_edit_rows'
wp option delete 'nta_telegram_setting'
wp option delete 'nta_tele_woobutton_setting'
wp option delete 'nta_tele_ga_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_tele_button_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_tele_button_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_tele_button_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_tele_button_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_tele_account_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_tele_account_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_tele_account_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_tele_account_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_tele_widget_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_tele_widget_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_tele_widget_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_tele_widget_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_tele_widget_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_tele_widget_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_tele_widget_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_tele_widget_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_tele_wc_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_tele_wc_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_tele_wc_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_tele_wc_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_tele_wc_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_tele_wc_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_tele_wc_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_tele_wc_position'"
