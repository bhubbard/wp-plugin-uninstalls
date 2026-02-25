#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dyt_db_version'
wp option delete 'dyt_pro_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%currency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%period'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%weekbegin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%payroll'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%prompt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%notes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%presubmit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dropdata'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%timeout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%geoloc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sigreq'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%categoryon'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%categorylist'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%categorylist_pto'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%custom_ot'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ot_min_dy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ot_min_wk'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ot_multip'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%df_in'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%df_out'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%df_hr'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%predict'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pto_default'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pto_bank'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pto_split'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pto_accrue'"
wp option delete 'dyt_hide_survey'
wp option delete 'dyt_user_ct'
wp option delete 'dyt_sup_ct'
wp option delete 'dyt_idx'
wp option delete 'dyt_idx5'
wp option delete 'dyt_cal_lk'
wp option delete 'dyt_pro'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%df_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%df_hmn_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cal_lk'"
wp option delete 'dyt_config_prompt'
wp option delete 'dyt_config_dropdata'
wp option delete 'dyt_config_pto_accrue'
wp option delete 'dyt_config_categorylist_pto'

# Delete Transients
wp transient delete 'dyt_period_admin_set'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
