#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'totalpoll_nps'
wp option delete 'totalpoll_onboarding'
wp option delete 'widget_totalpoll_poll'
wp option delete 'totalpoll_uninstall_feedback'
wp option delete 'totalpoll_options'
wp option delete '_tp_options_captcha_site_key'
wp option delete '_tp_options_captcha_site_secret'
wp option delete 'wp-polls_poll_migrated'
wp option delete 'poll_bar'
wp option delete 'poll_ans_sortby'
wp option delete 'poll_ans_sortorder'
wp option delete 'poll_ans_result_sortby'
wp option delete 'poll_ans_result_sortorder'
wp option delete 'poll_allowtovote'
wp option delete 'poll_cookielog_expiry'
wp option delete 'poll_logging_method'
wp option delete 'poll_bar_bg'
wp option delete 'poll_bar_border'
wp option delete 'yop_poll_migrated'
wp option delete 'totalpoll_default_preset'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%license_email'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_modules_store_response' OR option_name LIKE '_site_transient_%_modules_store_response'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'totalpoll/actions/urls/flush'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poll_preset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poll_preset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poll_preset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poll_preset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'question'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'question'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'question'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'question'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'choices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'choices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'choices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'choices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_limitations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_limitations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_limitations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_limitations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_choices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_choices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_choices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_choices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_screens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_screens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_screens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_screens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_logs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_logs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_logs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_logs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mp_logs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mp_logs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mp_logs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mp_logs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mp_submissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mp_submissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mp_submissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mp_submissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preset_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preset_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preset_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preset_id'"
