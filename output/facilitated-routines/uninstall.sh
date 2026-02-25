#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'faciro_404_monitor_enabled'
wp option delete 'faciro_rename_on_upload'
wp option delete 'faciro_create_thumbs'
wp option delete 'faciro_enable_optimize'
wp option delete 'faciro_enable_webp'
wp option delete 'faciro_remove_metadata'
wp option delete 'faciro_hide_wp_version'
wp option delete 'faciro_disable_heartbeat'
wp option delete 'faciro_disable_dashicons_front'
wp option delete 'faciro_remove_shortlink'
wp option delete 'faciro_disable_embed'
wp option delete 'faciro_disable_xmlrpc'
wp option delete 'faciro_remove_rsd'
wp option delete 'faciro_remove_fse_global_styles'
wp option delete 'faciro_remove_emojis'
wp option delete 'faciro_remove_header_info'
wp option delete 'faciro_strip_version_assets'
wp option delete 'faciro_hide_login_errors'
wp option delete 'faciro_disable_feeds'
wp option delete 'faciro_hide_admin_bar'
wp option delete 'faciro_prevent_multisite_signup'
wp option delete 'faciro_remove_x_pingback'
wp option delete 'faciro_disable_rankmath_sitemap_cache'
wp option delete 'faciro_sec_uploads_htaccess'
wp option delete 'faciro_sec_wpcontent_htaccess'
wp option delete 'faciro_sec_wpincludes_htaccess'
wp option delete 'faciro_sec_remove_readme'
wp option delete 'faciro_seo_alt_title_images'
wp option delete 'faciro_seo_title_links'
wp option delete 'faciro_seo_noreferrer_external'
wp option delete 'faciro_seo_nofollow_external'
wp option delete 'faciro_seo_external_new_tabs'
wp option delete 'faciro_ia_track_enabled'
wp option delete 'faciro_sitemap_enabled'
wp option delete 'faciro_sitemap_posts'
wp option delete 'faciro_sitemap_pages'
wp option delete 'faciro_sitemap_authors'
wp option delete 'faciro_sitemap_news'
wp option delete 'faciro_fill_image_title'
wp option delete 'faciro_fill_image_description'
wp option delete 'faciro_fill_image_caption'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'faciro_sitemap_%'"
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'faciro_module_errors'
wp transient delete 'faciro_broken_links_posts'
wp transient delete 'faciro_broken_links_cache'
wp transient delete 'faciro_remove_all_broken_links'
wp transient delete 'faciro_last_broken_links_list'
wp transient delete 'faciro_pages_without_internal_links_posts'
wp transient delete 'faciro_pages_without_external_links_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
