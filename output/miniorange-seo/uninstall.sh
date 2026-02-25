#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moseo_welcome_current_step'
wp option delete 'moseo_website_name'
wp option delete 'moseo_website_url'
wp option delete 'moseo_user_email'
wp option delete 'moseo_auto_update'
wp option delete 'moseo_site_type'
wp option delete 'moseo_site_scanned'
wp option delete 'moseo_excluded_sitemap_providers'
wp option delete 'moseo_exclude_noindex'
wp option delete 'moseo_robots_content'
wp option delete 'moseo_plugin_redirects'
wp option delete 'moseo_sitemap_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'moseo_excluded_post_ids_%'"
wp option delete 'moseo_current_sitemap_cache_key'
wp option delete 'google_code'
wp option delete 'bing_code'

# Delete Transients
wp transient delete 'moseo_breadcrumb_success'
wp transient delete 'moseo_breadcrumb_error'
wp transient delete 'moseo_findbrokenlinks_status'
wp transient delete 'moseo_robots_saved'
wp transient delete 'moseo_webmaster_success'
wp transient delete 'moseo_seo_summary'
wp transient delete 'moseo_seo_results'
wp transient delete 'moseo_redirect_success'
wp transient delete 'moseo_scan_in_progress'
wp transient delete 'moseo_sitemap_saved'
wp transient delete 'moseo_do_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_moseo_sitemap_index_%' OR option_name LIKE '_site_transient_moseo_sitemap_index_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moseo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moseo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moseo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moseo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moseo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moseo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moseo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moseo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moseo_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moseo_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moseo_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moseo_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moseo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moseo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moseo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moseo_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moseo_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moseo_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moseo_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moseo_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moseo_exclude_from_sitemap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moseo_exclude_from_sitemap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moseo_exclude_from_sitemap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moseo_exclude_from_sitemap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moseo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moseo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moseo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moseo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moseo_generated_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moseo_generated_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moseo_generated_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moseo_generated_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moseo_secondary_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moseo_secondary_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moseo_secondary_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moseo_secondary_keywords'"
