#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixxio_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixxio_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixxio_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixxio_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixxio_import_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixxio_import_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixxio_import_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixxio_import_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixxio_mediaspace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixxio_mediaspace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixxio_mediaspace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixxio_mediaspace'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixxio_downloadFormat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixxio_downloadFormat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixxio_downloadFormat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixxio_downloadFormat'"
