#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'masvideos_meta_box_errors'
wp option delete 'masvideos_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'masvideos_admin_notice_%'"
wp option delete 'masvideos_permalinks'
wp option delete 'masvideos_lock_down_admin'
wp option delete 'masvideos_weight_unit'
wp option delete 'masvideos_dimension_unit'
wp option delete 'masvideos_tmdb_api'
wp option delete 'masvideos_enable_review_rating'
wp option delete 'masvideos_episode_review_rating_required'
wp option delete 'masvideos_tv_show_review_rating_required'
wp option delete 'masvideos_video_review_rating_required'
wp option delete 'masvideos_movie_review_rating_required'
wp option delete 'masvideos_email_from_name'
wp option delete 'masvideos_email_from_address'
wp option delete 'masvideos_registration_generate_username'
wp option delete 'masvideos_registration_generate_password'
wp option delete 'masvideos_version'
wp option delete 'masvideos_db_version'
wp option delete 'current_theme_supports_masvideos'
wp option delete 'masvideos_queue_flush_rewrite_rules'
wp option delete 'masvideos_myaccount_videos_endpoint'
wp option delete 'masvideos_myaccount_movie_playlists_endpoint'
wp option delete 'masvideos_myaccount_video_playlists_endpoint'
wp option delete 'masvideos_myaccount_tv_show_playlists_endpoint'
wp option delete 'masvideos_myaccount_edit_account_endpoint'
wp option delete 'masvideos_logout_endpoint'
wp option delete 'masvideos_myaccount_page_id'
wp option delete 'masvideos_default_persons_catalog_orderby'
wp option delete 'masvideos_default_episodes_catalog_orderby'
wp option delete 'masvideos_default_tv_shows_catalog_orderby'
wp option delete 'masvideos_default_videos_catalog_orderby'
wp option delete 'masvideos_default_movies_catalog_orderby'
wp option delete 'masvideos_use_php_sessions'
wp option delete 'default_episode_genre'
wp option delete 'default_movie_genre'
wp option delete 'default_person_cat'
wp option delete 'default_tv_show_genre'
wp option delete 'default_video_cat'
wp option delete 'masvideos_episode_columns'
wp option delete 'masvideos_episode_rows'
wp option delete 'masvideos_movie_columns'
wp option delete 'masvideos_movie_rows'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'masvideos_person_columns'
wp option delete 'masvideos_person_rows'
wp option delete 'masvideos_tv_show_columns'
wp option delete 'masvideos_tv_show_rows'
wp option delete 'masvideos_video_columns'
wp option delete 'masvideos_video_rows'
wp option delete 'masvideos_email_footer_text'
wp option delete 'masvideos_email_header_image'
wp option delete 'masvideos_email_background_color'
wp option delete 'masvideos_email_body_background_color'
wp option delete 'masvideos_email_base_color'
wp option delete 'masvideos_email_text_color'

# Delete Transients
wp transient delete 'masvideos_count_comments'
wp transient delete 'masvideos_installing'
wp transient delete '_masvideos_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_masvideos_ln_count_%' OR option_name LIKE '_site_transient_masvideos_ln_count_%'"
wp transient delete 'masvideos_featured_episodes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_masvideos_layered_nav_counts_%' OR option_name LIKE '_site_transient_masvideos_layered_nav_counts_%'"
wp transient delete 'masvideos_featured_movies'
wp transient delete 'masvideos_featured_persons'
wp transient delete 'masvideos_featured_tv_shows'
wp transient delete 'masvideos_featured_videos'
wp transient delete 'masvideos_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'importer_scheduled_cleanup'
wp cron event delete 'delete_version_transients'
wp cron event delete 'wp_session_garbage_collection'
wp cron event delete 'masvideos_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_masvideos_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_masvideos_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_masvideos_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_masvideos_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_masvideos_rating_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_masvideos_rating_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_masvideos_rating_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_masvideos_rating_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_masvideos_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_masvideos_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_masvideos_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_masvideos_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sources'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sources'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sources'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sources'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_episode_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_episode_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_episode_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_episode_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tv_show_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tv_show_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tv_show_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tv_show_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tv_show_season_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tv_show_season_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tv_show_season_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tv_show_season_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_episode_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_episode_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_episode_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_episode_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_episode_choice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_episode_choice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_episode_choice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_episode_choice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_episode_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_episode_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_episode_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_episode_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_episode_embed_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_episode_embed_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_episode_embed_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_episode_embed_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_episode_url_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_episode_url_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_episode_url_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_episode_url_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_episode_release_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_episode_release_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_episode_release_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_episode_release_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_episode_run_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_episode_run_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_episode_run_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_episode_run_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imdb_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imdb_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imdb_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imdb_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tmdb_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tmdb_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tmdb_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tmdb_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_episode_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_episode_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_episode_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_episode_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cast'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cast'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cast'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cast'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crew'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crew'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crew'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crew'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_choice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_choice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_choice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_choice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_embed_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_embed_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_embed_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_embed_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_url_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_url_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_url_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_url_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_is_affiliate_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_is_affiliate_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_is_affiliate_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_is_affiliate_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_release_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_release_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_release_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_release_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_run_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_run_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_run_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_run_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_censor_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_censor_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_censor_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_censor_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recommended_movie_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recommended_movie_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recommended_movie_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recommended_movie_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_related_video_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_related_video_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_related_video_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_related_video_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_cast'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_cast'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_cast'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_cast'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_crew'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_crew'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_crew'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_crew'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tv_show_cast'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tv_show_cast'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tv_show_cast'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tv_show_cast'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tv_show_crew'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tv_show_crew'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tv_show_crew'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tv_show_crew'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_person_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_person_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_person_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_person_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_also_known_as'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_also_known_as'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_also_known_as'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_also_known_as'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_place_of_birth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_place_of_birth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_place_of_birth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_place_of_birth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_birthday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_birthday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_birthday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_birthday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deathday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deathday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deathday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deathday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_person_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_person_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_person_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_person_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seasons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seasons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seasons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seasons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tv_show_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tv_show_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tv_show_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tv_show_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tv_show_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tv_show_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tv_show_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tv_show_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tv_show_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tv_show_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tv_show_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tv_show_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_choice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_choice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_choice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_choice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_embed_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_embed_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_embed_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_embed_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_url_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_url_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_url_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_url_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_masvideos_attachment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_masvideos_attachment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_masvideos_attachment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_masvideos_attachment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon'"
