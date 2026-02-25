#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_meta_editor_pro_options'
wp option delete 'seo_meta_editor_settings'
wp option delete 'seo_meta_editor_version'
wp option delete 'wpseo_titles'

# Delete Transients
wp transient delete 'seo_meta_editor_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
