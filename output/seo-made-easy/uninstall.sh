#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seomadeeasy_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seomadeeasy_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seomadeeasy_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seomadeeasy_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seomadeeasy_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seomadeeasy_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seomadeeasy_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seomadeeasy_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seomadeeasy_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seomadeeasy_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seomadeeasy_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seomadeeasy_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seomadeeasy_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seomadeeasy_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seomadeeasy_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seomadeeasy_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seomadeeasy_primary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seomadeeasy_primary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seomadeeasy_primary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seomadeeasy_primary'"
