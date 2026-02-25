#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smd_locations'
wp option delete 'smd_net_locations'
wp option delete 'smd_website_blog_type'
wp option delete 'smd_hide_metadata_dates'
wp option delete 'smd_disable_frontmatter_type'
wp option delete 'smd_disable_backmatter_type'
wp option delete 'smd_organization_logo_image_id'
wp option delete 'smd_organization_name'
wp option delete '_ext_source_id'
wp option delete 'wpseo_titles'
wp option delete 'autodescription-site-settings'
wp option delete 'smd_logo_image_id'
wp option delete 'smdre_is_translated_from'
wp option delete 'smd_net_sites_type'
wp option delete 'smd_net_hide_metadata_dates'
wp option delete 'smde_locations'
wp option delete 'smdlc_locations'
wp option delete 'smdan_locations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smd_googleImage_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smd_googleImage_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smd_googleImage_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smd_googleImage_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smd_page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smd_page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smd_page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smd_page_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smd_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smd_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smd_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smd_post_type'"
