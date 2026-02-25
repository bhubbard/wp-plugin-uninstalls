#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpza_gui__plugin_settings_currency_decimal_places'
wp option delete 'wpza_gui__plugin_settings_currency'
wp option delete 'wpza_gui__plugin_settings_currency_after'
wp option delete 'wpza_gui__plugin_settings_tax'
wp option delete 'wpza_gui__plugin_settings_company_address'
wp option delete 'wpza_gui__plugin_settings_footer_information'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpza_gui__metabox_items_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpza_gui__metabox_items_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpza_gui__metabox_items_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpza_gui__metabox_items_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_tax'"
