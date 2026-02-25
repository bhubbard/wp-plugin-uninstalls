#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sism_seoTitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sism_seoTitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sism_seoTitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sism_seoTitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sism_seoSlug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sism_seoSlug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sism_seoSlug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sism_seoSlug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sism_seoMetaDescription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sism_seoMetaDescription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sism_seoMetaDescription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sism_seoMetaDescription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sism_seoMetaKeywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sism_seoMetaKeywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sism_seoMetaKeywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sism_seoMetaKeywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seoTitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seoTitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seoTitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seoTitle'"
