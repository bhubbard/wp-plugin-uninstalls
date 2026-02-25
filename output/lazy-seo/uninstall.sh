#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lazy-number'
wp option delete 'lazy-number-geo'
wp option delete 'lazy-keywords'
wp option delete 'lazy-geo'
wp option delete 'lazy-check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazy_seo_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazy_seo_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazy_seo_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazy_seo_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazy_seo_meta_key_geo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazy_seo_meta_key_geo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazy_seo_meta_key_geo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazy_seo_meta_key_geo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazy_seo_meta_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazy_seo_meta_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazy_seo_meta_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazy_seo_meta_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazy_seo_meta_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazy_seo_meta_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazy_seo_meta_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazy_seo_meta_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazy_seo_meta_h1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazy_seo_meta_h1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazy_seo_meta_h1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazy_seo_meta_h1'"
