#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssi_wpjm_license_key'
wp option delete 'ssi_wpjm_template'
wp option delete 'ssi_wpjm_text_color'
wp option delete 'ssi_wpjm_text_bg_color'
wp option delete 'ssi_wpjm_bg_color'
wp option delete 'ssi_wpjm_logo'
wp option delete 'ssi_wpjm_logo_size'
wp option delete 'ssi_wpjm_background_images'
wp option delete 'ssi_wpjm_title_size'
wp option delete 'ssi_wpjm_location_size'
wp option delete 'ssi_wpjm_salary_size'
wp option delete 'ssi_wpjm_title_placeholder_text'
wp option delete 'ssi_wpjm_location_placeholder_text'
wp option delete 'ssi_wpjm_salary_placeholder_text'
wp option delete 'ssi_wpjm_google_font_url'
wp option delete 'ssi_wpjm_google_font_family'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssi_wpjm_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssi_wpjm_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssi_wpjm_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssi_wpjm_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssi_wpjm_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssi_wpjm_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssi_wpjm_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssi_wpjm_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_facebook_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_facebook_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_facebook_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_facebook_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_twitter_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_twitter_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_twitter_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_twitter_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
