#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'turbo_addons_widgets'
wp option delete 'turbo_addons_extensions'
wp option delete 'trad_info_text_date'
wp option delete 'trad_install_date'
wp option delete 'trad_hide_tinfo1'
wp option delete 'trad_turbo_addons_template_items'
wp option delete 'trad_turbo_addons_version'

# Delete Transients
wp transient delete 'turbo_addons_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_unlike_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_unlike_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_unlike_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_unlike_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trad_post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trad_post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trad_post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trad_post_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_image'"
