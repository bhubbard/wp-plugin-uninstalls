#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'preload_lcp_image_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lcp_url_preload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lcp_url_preload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lcp_url_preload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lcp_url_preload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lcp_id_preload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lcp_id_preload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lcp_id_preload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lcp_id_preload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lcp_mobile_url_preload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lcp_mobile_url_preload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lcp_mobile_url_preload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lcp_mobile_url_preload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lcp_mobile_id_preload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lcp_mobile_id_preload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lcp_mobile_id_preload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lcp_mobile_id_preload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lcp_force_as'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lcp_force_as'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lcp_force_as'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lcp_force_as'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lcp_mobile_force_as'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lcp_mobile_force_as'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lcp_mobile_force_as'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lcp_mobile_force_as'"
