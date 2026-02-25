#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feedbackvault_redirect_url'
wp option delete 'feedbackvault_default_status'
wp option delete 'feedbackvault_reviews_per_page'
wp option delete 'feedbackvault_google_api_key'
wp option delete 'feedbackvault_google_place_id'
wp option delete 'feedbackvault_google_cache_duration'
wp option delete 'feedbackvault_trustpilot_url'
wp option delete 'feedbackvault_trustpilot_cache_duration'
wp option delete 'feedbackvault_trustpilot_max_reviews'
wp option delete 'feedbackvault_show_avatars'
wp option delete 'feedbackvault_show_dates'
wp option delete 'feedbackvault_show_source'
wp option delete 'feedbackvault_excerpt_length'
wp option delete 'feedbackvault_enable_load_more'
wp option delete 'feedbackvault_show_review_form_when_empty'
wp option delete 'feedbackvault_auto_load_more'
wp option delete 'feedbackvault_show_animations'
wp option delete 'feedbackvault_lazy_load'
wp option delete 'feedbackvault_primary_color'
wp option delete 'feedbackvault_star_color'
wp option delete 'feedbackvault_text_color'
wp option delete 'feedbackvault_font_family'
wp option delete 'feedbackvault_font_size'
wp option delete 'feedbackvault_mobile_breakpoint'
wp option delete 'feedbackvault_version'
wp option delete 'feedbackvault_activated_time'
wp option delete 'feedbackvault_deactivated_time'
wp option delete 'feedbackvault_google_maps_url'

# Delete Transients
wp transient delete 'feedbackvault_google_reviews_cache'
wp transient delete 'feedbackvault_trustpilot_cache'
wp transient delete 'feedbackvault_api_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_feedbackvault_reviews_%' OR option_name LIKE '_site_transient_feedbackvault_reviews_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_feedbackvault_google_reviews_%' OR option_name LIKE '_site_transient_feedbackvault_google_reviews_%'"

# Clear Cron Jobs
wp cron event delete 'feedbackvault_daily_sync'
wp cron event delete 'feedbackvault_weekly_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_date_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_date_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_date_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_date_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_review_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_review_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_review_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_review_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_reviewer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_reviewer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_reviewer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_reviewer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_reviewer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_reviewer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_reviewer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_reviewer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_reviewer_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_reviewer_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_reviewer_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_reviewer_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_reviewer_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_reviewer_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_reviewer_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_reviewer_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_source_platform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_source_platform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_source_platform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_source_platform'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedbackvault_replied'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedbackvault_replied'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedbackvault_replied'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedbackvault_replied'"
