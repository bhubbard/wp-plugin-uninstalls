#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'parasut_api_settings'
wp option delete 'parasut_araclar_ayarlar'
wp option delete 'parasut_license_key'
wp option delete 'parasut_ana_ayarlar'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parasut_urun_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parasut_urun_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parasut_urun_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parasut_urun_id'"
