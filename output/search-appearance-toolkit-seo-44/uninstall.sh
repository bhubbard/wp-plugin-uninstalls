#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo44_settings'

# Delete Transients
wp transient delete 'seo44_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo44_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo44_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo44_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo44_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo44_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo44_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo44_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo44_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo44_enable_howto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo44_enable_howto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo44_enable_howto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo44_enable_howto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo44_howto_step_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo44_howto_step_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo44_howto_step_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo44_howto_step_ids'"
