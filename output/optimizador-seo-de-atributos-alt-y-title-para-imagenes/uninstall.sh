#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_optimizer_enable_function'
wp option delete 'seo_optimizer_attribute_option'
wp option delete 'seo_optimizer_preserve_existing_attributes'
wp option delete 'seo_optimizer_custom_template'
wp option delete 'seo_optimizer_replace_hyphens'
wp option delete 'seo_optimizer_replace_underscores'
wp option delete 'seo_optimizer_replace_periods'
wp option delete 'seo_optimizer_replace_commas'
wp option delete 'seo_optimizer_replace_numbers'
wp option delete 'seo_optimizer_text_case_option'
wp option delete 'seo_optimizer_modify_featured_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
