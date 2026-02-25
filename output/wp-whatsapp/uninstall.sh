#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nta_wa_widget_display'
wp option delete 'nta_wa_url'
wp option delete 'nta_wa_user_role'
wp option delete 'nta_wa_widget_styles'
wp option delete 'nta_wa_woocommerce'
wp option delete 'njt_wa_first_time_active'
wp option delete 'njt_wa_version'
wp option delete 'default_post_edit_rows'
wp option delete 'nta_whatsapp_setting'
wp option delete 'nta_wa_woobutton_setting'
wp option delete 'nta_wa_ga_setting'
wp option delete 'nta_wa_analytics'
wp option delete 'nta_wa_restored'
wp option delete 'nta_wa_background_restored'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_wa_button_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_wa_button_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_wa_button_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_wa_button_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_wa_account_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_wa_account_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_wa_account_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_wa_account_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_wa_widget_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_wa_widget_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_wa_widget_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_wa_widget_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_wa_widget_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_wa_widget_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_wa_widget_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_wa_widget_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_wa_wc_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_wa_wc_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_wa_wc_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_wa_wc_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_wa_wc_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_wa_wc_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_wa_wc_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_wa_wc_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_whatsapp_accounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_whatsapp_accounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_whatsapp_accounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_whatsapp_accounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nta_wabutton_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nta_wabutton_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nta_wabutton_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nta_wabutton_style'"
