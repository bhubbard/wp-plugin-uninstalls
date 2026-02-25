#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wgmbr_access_token'
wp option delete 'wgmbr_available_locations'
wp option delete 'wgmbr_account_id'
wp option delete 'wgmbr_location_id'
wp option delete 'wgmbr_client_id'
wp option delete 'wgmbr_client_secret'
wp option delete 'wgmbr_redirect_uri'
wp option delete 'wgmbr_refresh_token'
wp option delete 'wgmbr_token_expires'
wp option delete 'wgmbr_radius_card'
wp option delete 'wgmbr_color_card_bg'
wp option delete 'wgmbr_color_star'
wp option delete 'wgmbr_color_text_primary'
wp option delete 'wgmbr_color_text_resume'
wp option delete 'wgmbr_color_accent'
wp option delete 'wgmbr_last_token_error'
wp option delete 'wgmbr_last_error'
wp option delete 'wgmbr_error_logs'

# Delete Transients
wp transient delete 'wgmbr_reviews_cache'
wp transient delete 'wgmbr_avg_rating_cache'
wp transient delete 'wgmbr_last_sync_time'
wp transient delete 'wgmbr_oauth_state'
wp transient delete 'wgmbr_accounts_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgmbr_review_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgmbr_review_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgmbr_review_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgmbr_review_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgmbr_reviewer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgmbr_reviewer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgmbr_reviewer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgmbr_reviewer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgmbr_reviewer_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgmbr_reviewer_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgmbr_reviewer_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgmbr_reviewer_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgmbr_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgmbr_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgmbr_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgmbr_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgmbr_job'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgmbr_job'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgmbr_job'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgmbr_job'"
