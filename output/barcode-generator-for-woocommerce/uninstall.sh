#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pbarginerator_print_option'
wp option delete 'pbrshortcodesettings'
wp option delete 'pbr_downlaod_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pbg_meta_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pbg_meta_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pbg_meta_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pbg_meta_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bargeno_meta_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bargeno_meta_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bargeno_meta_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bargeno_meta_barcode'"
