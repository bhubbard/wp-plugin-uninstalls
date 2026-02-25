#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_licensed'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'personalizer_ppuri_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'personalizer_ppuri_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'personalizer_ppuri_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'personalizer_ppuri_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'personalizer_shortcode_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'personalizer_shortcode_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'personalizer_shortcode_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'personalizer_shortcode_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'personalizer_shortcod_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'personalizer_shortcod_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'personalizer_shortcod_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'personalizer_shortcod_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'personalizer_shortcod_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'personalizer_shortcod_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'personalizer_shortcod_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'personalizer_shortcod_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'personalizer_ppuri_copy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'personalizer_ppuri_copy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'personalizer_ppuri_copy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'personalizer_ppuri_copy'"
