#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'robotspeed_api_token'
wp option delete 'robotspeed_stats'
wp option delete 'robotspeed_connected'
wp option delete 'robotspeed_connected_email'
wp option delete 'robotspeed_connected_site'
wp option delete 'robotspeed_connection_token'
wp option delete 'robotspeed_analytics_umami_url'
wp option delete 'robotspeed_analytics_website_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
