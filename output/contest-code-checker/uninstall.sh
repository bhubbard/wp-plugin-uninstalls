#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccc_start_date'
wp option delete 'ccc_end_date'
wp option delete 'ccc_display_popover'
wp option delete 'ccc_pop_up_width'
wp option delete 'ccc_pop_up_height'
wp option delete 'ccc_email_winner'
wp option delete 'ccc_email_winner_body'
wp option delete 'ccc_email_winner_subject'
wp option delete 'ccc_text_winning'
wp option delete 'ccc_text_losing'
wp option delete 'ccc_text_invalid'
wp option delete 'ccc_text_already_used'
wp option delete 'ccc_contest_not_running'
wp option delete 'ccc_hide_email'
wp option delete 'ccc_hide_first_name'
wp option delete 'ccc_hide_last_name'
wp option delete 'ccc_do_not_save_invalid'
wp option delete 'ccc_enable_captcha'
wp option delete 'ccc_recaptcha_secret_api'
wp option delete 'ccc_recaptcha_site_key'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccc_has_been_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccc_has_been_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccc_has_been_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccc_has_been_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccc_contest_code_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccc_contest_code_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccc_contest_code_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccc_contest_code_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccc_contestant_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccc_contestant_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccc_contestant_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccc_contestant_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccc_contestant_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccc_contestant_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccc_contestant_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccc_contestant_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccc_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccc_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccc_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccc_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccc_prize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccc_prize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccc_prize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccc_prize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccc_invalid_contest_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccc_invalid_contest_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccc_invalid_contest_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccc_invalid_contest_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccc_prize_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccc_prize_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccc_prize_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccc_prize_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccc_prize_information'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccc_prize_information'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccc_prize_information'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccc_prize_information'"
