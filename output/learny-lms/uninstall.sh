#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ly_system_currency'
wp option delete 'ly_currency_position'
wp option delete 'ly_auth_page'
wp option delete 'ly_checkout_page'
wp option delete 'ly_dashboard_page'
wp option delete 'ly_course_player_page'
wp option delete 'ly_youtube_api_key'
wp option delete 'ly_vimeo_api_key'
wp option delete 'ly_paypal_mode'
wp option delete 'ly_paypal_sandbox_client_id'
wp option delete 'ly_paypal_sandbox_secret_key'
wp option delete 'ly_paypal_live_client_id'
wp option delete 'ly_paypal_live_secret_key'
wp option delete 'ly_instructor_revenue_percentage'
wp option delete 'ly_business_name'
wp option delete 'ly_business_email'
wp option delete 'ly_business_phone'
wp option delete 'ly_purchase_code'
wp option delete 'ly_system_logo_url'
wp option delete 'ly_public_instructor'
wp option delete 'ly_instructor_application_note'
wp option delete 'ly_admin_revenue_percentage'
wp option delete 'ly_zoom_api_key'
wp option delete 'ly_zoom_secret_key'
wp option delete 'ly_paypal_active'
wp option delete 'ly_stripe_active'
wp option delete 'ly_stripe_mode'
wp option delete 'ly_stripe_sandbox_secret_key'
wp option delete 'ly_stripe_sandbox_public_key'
wp option delete 'ly_stripe_live_secret_key'
wp option delete 'ly_stripe_live_public_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_course_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_course_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_course_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_course_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'learny_course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'learny_course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'learny_course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'learny_course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_course_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_course_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_course_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_course_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_course_difficulty_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_course_difficulty_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_course_difficulty_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_course_difficulty_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_course_language_made_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_course_language_made_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_course_language_made_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_course_language_made_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_is_trendy_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_is_trendy_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_is_trendy_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_is_trendy_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_course_requirements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_course_requirements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_course_requirements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_course_requirements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_course_outcomes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_course_outcomes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_course_outcomes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_course_outcomes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_course_preview_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_course_preview_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_course_preview_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_course_preview_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_course_preview_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_course_preview_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_course_preview_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_course_preview_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_is_free_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_is_free_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_is_free_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_is_free_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_course_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_course_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_course_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_course_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_lesson_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_lesson_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_lesson_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_lesson_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_video_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_video_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_video_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_video_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_iframe_src'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_iframe_src'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_iframe_src'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_iframe_src'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_section_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_section_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_section_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_section_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'learny_course_category_image_thumbnail_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'learny_course_category_image_thumbnail_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'learny_course_category_image_thumbnail_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'learny_course_category_image_thumbnail_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ly_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ly_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ly_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ly_summary'"
