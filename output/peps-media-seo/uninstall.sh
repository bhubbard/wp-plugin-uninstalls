#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pm-seo-header-code'
wp option delete 'pm-seo-body-open-code'
wp option delete 'pm-seo-footer-code'
wp option delete 'pm-seo-og-site-name'
wp option delete 'pm-seo-disable-attachment-pages'
wp option delete 'pm-seo-disable-author-pages'
wp option delete 'pm-seo-delete-data-on-uninstall'
wp option delete 'pm-seo-disable-sitemap'
wp option delete 'pm-seo-disable-author-sitemap'
wp option delete 'pm-seo-disable-user-sitemap'
wp option delete 'pm-seo-disable-tags-sitemap'
wp option delete 'pm-seo-disable-category-sitemap'
wp option delete 'pm-seo-disable-testimonial-sitemap'
wp option delete 'pm-seo-include-translated-sitemaps'
wp option delete 'wp_attachment_pages_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_seo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_seo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_seo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_seo_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_seo_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_seo_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_seo_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_seo_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_seo_sitemap_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_seo_sitemap_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_seo_sitemap_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_seo_sitemap_exclude'"
