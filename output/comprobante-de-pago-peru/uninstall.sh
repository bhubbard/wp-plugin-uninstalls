#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comprobante_checkbox_be'
wp option delete 'comprobante_checkbox_fe'
wp option delete 'comprobante_docs_default'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_comprobante'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_comprobante'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_comprobante'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_comprobante'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dni'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dni'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dni'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dni'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ruc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ruc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ruc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ruc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_responsable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_responsable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_responsable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_responsable'"
