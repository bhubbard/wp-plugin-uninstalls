#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fv_default_post_edit_rows'
wp option delete 'fp_wysiwyg_version'
wp option delete 'default_post_edit_rows'
wp option delete 'foliopress_wysiwyg_seo_images_gone'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_impact_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_impact_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_impact_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_impact_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wysiwyg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wysiwyg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wysiwyg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wysiwyg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_use_impact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_use_impact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_use_impact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_use_impact'"
