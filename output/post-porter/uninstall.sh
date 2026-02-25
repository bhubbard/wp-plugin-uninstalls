#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_porter_website_url'
wp option delete 'post_porter_post_type'
wp option delete 'post_porter_website_post_type'
wp option delete 'post_porter_is_authorized'
wp option delete 'post_porter_export_key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'user_avatar_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'user_avatar_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'user_avatar_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'user_avatar_%'"
