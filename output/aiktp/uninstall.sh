#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiktp_api_key'
wp option delete 'aiktpz_token'
wp option delete 'aiktpz_content_length'
wp option delete 'aiktpz_content_tone'
wp option delete 'aiktpz_custom_prompt'
wp option delete 'aiktpz_content_language'
wp option delete 'aiktpz_migration_done'
wp option delete 'aiktp_author'
wp option delete 'aiktp_category'
wp option delete 'chatgpt_aiktp_key'

# Delete Transients
wp transient delete 'aiktpz_bulk_products'
wp transient delete 'aiktpz_bulk_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
