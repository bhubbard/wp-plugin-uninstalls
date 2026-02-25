#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bnitk_mfd_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bnitk_mfd_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bnitk_mfd_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bnitk_mfd_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bnitk_mfd_meta-robots-nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bnitk_mfd_meta-robots-nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bnitk_mfd_meta-robots-nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bnitk_mfd_meta-robots-nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_bnitk_mfd_meta-robots-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_bnitk_mfd_meta-robots-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_bnitk_mfd_meta-robots-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_bnitk_mfd_meta-robots-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
