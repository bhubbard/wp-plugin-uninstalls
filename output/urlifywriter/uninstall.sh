#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'urlifywriterautoscan_interval'
wp option delete 'urlifywriterautogen_interval'
wp option delete 'urlifywritertarget_min_words'
wp option delete 'urlifywritertarget_max_words'
wp option delete 'urlifywriterimages_enabled'
wp option delete 'urlifywriterimage_source'
wp option delete 'urlifywriterimage_original_ack'
wp option delete 'urlifywriterpixabay_images_per_article'
wp option delete 'urlifywriterai_images_per_article'
wp option delete 'urlifywriterimage_insert'
wp option delete 'urlifywriterai_style_hint'
wp option delete 'urlifywriterapi_pixabay_key'
wp option delete 'urlifywriterapi_openai_key'
wp option delete 'urlifywriterlicense_last_error'
wp option delete 'urlifywriterlicense_last_checked'
wp option delete 'urlifywriterlicense_last_error_http'
wp option delete 'urlifywriterlicense_state'
wp option delete 'urlifywriterlicense_details'
wp option delete 'urlifywritermax_words'
wp option delete 'urlifywriterarticle_language'
wp option delete 'urlifywriterarticle_author'
wp option delete 'urlifywriterapi_gemini_key'
wp option delete 'urlifywriterlicense_key'
wp option delete 'urlifywriterautoscan_last_run'
wp option delete 'urlifywriterautogen_last_run'
wp option delete 'urlifywriterautoscan_webhook_key'
wp option delete 'urlifywriterautogen_batch'
wp option delete 'urlifywriterautogen_webhook_key'
wp option delete 'urlifywriterautoscan_enabled'

# Clear Cron Jobs
wp cron event delete 'urlifywriterautoscan_cron'
wp cron event delete 'urlifywriterautogen_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urlifywriterlang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urlifywriterlang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urlifywriterlang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urlifywriterlang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urlifywritersource_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urlifywritersource_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urlifywritersource_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urlifywritersource_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urlifywriterpublish_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urlifywriterpublish_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urlifywriterpublish_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urlifywriterpublish_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urlifywriterschedule_frequency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urlifywriterschedule_frequency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urlifywriterschedule_frequency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urlifywriterschedule_frequency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urlifywriterschedule_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urlifywriterschedule_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urlifywriterschedule_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urlifywriterschedule_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urlifywriterschedule_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urlifywriterschedule_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urlifywriterschedule_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urlifywriterschedule_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urlifywriterschedule_count_per_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urlifywriterschedule_count_per_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urlifywriterschedule_count_per_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urlifywriterschedule_count_per_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urlifywriterschedule_hours_between'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urlifywriterschedule_hours_between'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urlifywriterschedule_hours_between'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urlifywriterschedule_hours_between'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urlifywriterorigin_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urlifywriterorigin_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urlifywriterorigin_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urlifywriterorigin_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_urlifywritergenerated_simulation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_urlifywritergenerated_simulation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_urlifywritergenerated_simulation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_urlifywritergenerated_simulation'"
