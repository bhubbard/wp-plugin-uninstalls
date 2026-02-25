#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_marked_printed_for_packaging'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_marked_printed_for_packaging'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_marked_printed_for_packaging'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_marked_printed_for_packaging'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'treggo_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'treggo_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'treggo_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'treggo_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'treggo_descripcion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'treggo_descripcion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'treggo_descripcion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'treggo_descripcion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'treggo_direccion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'treggo_direccion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'treggo_direccion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'treggo_direccion'"
