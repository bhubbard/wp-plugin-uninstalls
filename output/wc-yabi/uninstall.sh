#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yabi_settings'
wp option delete 'yabi_credit_note_number'
wp option delete 'yabi_invoice_number'
wp option delete 'yabi_create_prefix'
wp option delete 'yabi_resolution_link'
wp option delete 'yabi_save_prefixes'
wp option delete 'yabi_prefixes'
wp option delete 'yabi_resolution'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yabi_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yabi_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yabi_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yabi_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yabi_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yabi_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yabi_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yabi_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yabi_order_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yabi_order_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yabi_order_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yabi_order_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yabi_graphQL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yabi_graphQL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yabi_graphQL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yabi_graphQL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yabi_cancel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yabi_cancel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yabi_cancel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yabi_cancel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yabi_person'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yabi_person'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yabi_person'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yabi_person'"
