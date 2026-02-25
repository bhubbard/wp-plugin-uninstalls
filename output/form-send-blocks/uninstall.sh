#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'start_cancel'
wp option delete 'itmar_post_needs_flush'
wp option delete 'itmar_permission_error'
wp option delete 'itmar_ogp_enabled'
wp option delete 'itmar_ogp_site_name'
wp option delete 'itmar_ogp_default_image'
wp option delete 'itmar_ogp_square_image'
wp option delete 'itmar_ogp_twitter_card'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'send_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'send_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'send_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'send_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_revisions_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_revisions_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_revisions_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_revisions_count'"
