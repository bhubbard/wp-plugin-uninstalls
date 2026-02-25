#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'noindex_seo_config_granular'
wp option delete 'noindex_seo_config_method'
wp option delete 'noindex_seo_config_version'
wp option delete 'noindex_seo_config_seoplugins'

# Delete Transients
wp transient delete 'noindex_seo_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_noindex_seo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_noindex_seo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_noindex_seo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_noindex_seo_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noindex_seo_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noindex_seo_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noindex_seo_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noindex_seo_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noindex_seo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noindex_seo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noindex_seo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noindex_seo_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noindex_seo_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noindex_seo_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noindex_seo_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noindex_seo_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noindex_seo_noarchive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noindex_seo_noarchive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noindex_seo_noarchive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noindex_seo_noarchive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noindex_seo_nosnippet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noindex_seo_nosnippet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noindex_seo_nosnippet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noindex_seo_nosnippet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noindex_seo_noimageindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noindex_seo_noimageindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noindex_seo_noimageindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noindex_seo_noimageindex'"
