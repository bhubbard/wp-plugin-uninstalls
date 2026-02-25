#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frbl_activation_redirect'
wp option delete 'frontblocks_settings'
wp option delete 'frontblocks-pro_license_apikey'
wp option delete 'frontblocks-pro_license_deactivate_checkbox'
wp option delete 'generate_settings'
wp option delete 'frontblocks-pro_license_activated'
wp option delete 'generate_dynamic_css_output'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'all_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'all_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'all_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'all_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'web'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'web'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'web'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'web'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poster_evento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poster_evento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poster_evento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poster_evento'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direccion_evento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direccion_evento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direccion_evento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direccion_evento'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reading_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reading_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reading_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reading_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frontblocks_stars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frontblocks_stars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frontblocks_stars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frontblocks_stars'"
