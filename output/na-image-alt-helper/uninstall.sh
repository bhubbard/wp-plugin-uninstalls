#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aatg_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aatg_previous_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aatg_previous_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aatg_previous_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aatg_previous_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aatg_generated_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aatg_generated_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aatg_generated_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aatg_generated_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
