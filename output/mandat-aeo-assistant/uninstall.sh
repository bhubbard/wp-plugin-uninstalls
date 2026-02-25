#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maao_service_account_json'
wp option delete 'maao_project_id'
wp option delete 'maao_youtube_api_key'
wp option delete 'maao_cse_api_key'
wp option delete 'maao_cse_id'
wp option delete 'maa_license_status'
wp option delete 'maa_license_key'
wp option delete 'maa_user_email'
wp option delete 'maa_service_account_json'
wp option delete 'maa_project_id'
wp option delete 'maa_youtube_api_key'
wp option delete 'maa_cse_api_key'
wp option delete 'maa_cse_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_maao_publish_error_%' OR option_name LIKE '_site_transient_maao_publish_error_%'"
wp transient delete 'maao_vertex_ai_token'
wp transient delete 'maa_vertex_ai_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maao_scoped_post_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maao_scoped_post_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maao_scoped_post_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maao_scoped_post_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
