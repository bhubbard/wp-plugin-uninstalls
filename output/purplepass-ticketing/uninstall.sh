#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pptec_data'
wp option delete 'pptec_job_events_fetching'
wp option delete 'pptec_stats_update_time'
wp option delete 'classic-editor-replace'
wp option delete 'classic-editor-allow-users'
wp option delete 'pptec_widget_settings'
wp option delete 'pptec_random_str'
wp option delete 'pptec_oauth_decrypted_client_id'
wp option delete 'pptec_oauth_settings'
wp option delete 'pptec_oauth_refresh_token'
wp option delete 'pptec_events_last_requested_date'
wp option delete 'pptec_wizard'
wp option delete 'Activated_Plugin'

# Delete Transients
wp transient delete 'doing_cron'

# Clear Cron Jobs
wp cron event delete 'pptec_check_bg_failed_process'
wp cron event delete 'pptec_cron_fetch_event_processing'
wp cron event delete 'pptec_job_daily_actions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pptec_pp_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pptec_pp_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pptec_pp_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pptec_pp_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'current_post_row_counter_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'current_post_row_counter_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'current_post_row_counter_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'current_post_row_counter_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pptec_event_meta_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pptec_event_meta_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pptec_event_meta_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pptec_event_meta_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_enabled_ticket_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_enabled_ticket_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_enabled_ticket_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_enabled_ticket_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueOrigin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueOrigin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueOrigin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueOrigin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueProvince'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueProvince'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueProvince'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueProvince'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueStateProvince'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueStateProvince'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueStateProvince'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueStateProvince'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_events_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_events_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_events_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_events_types'"
