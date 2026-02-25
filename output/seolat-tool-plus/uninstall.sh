#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '301_redirects'
wp option delete 'api_manager_sl_plus_activated'
wp option delete 'seo_lat_tool_plus'
wp option delete 'simple_wp_disp_categories'
wp option delete 'simple_wp_disp_tags'
wp option delete 'simple_wp_disp_authors'
wp option delete 'simple_wp_block_urls'
wp option delete 'simple_wp_other_urls'
wp option delete 'simple_wp_last_updated'
wp option delete 'simple_wp_attr_link'
wp option delete 'simple_wp_disp_sitemap_order'
wp option delete 'simple_wp_premium_code'
wp option delete 'simple_wp_sitemap_version'
wp option delete 'sl_version'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_desc'"
