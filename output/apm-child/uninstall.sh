#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apm_funnel_pageid_mapping_data'
wp option delete 'apm_funnel_slug_mapping_data'
wp option delete 'apm_funnel_prospect_tags'
wp option delete 'apm_funnel_clickmagic_script'
wp option delete 'apm_funnel_status_mapping_data'
wp option delete 'apm_funnel_termid_mapping_data'
wp option delete 'apm_funnel_slug_term_mapping_data'
wp option delete 'apm_funnel_optin_default_display'
wp option delete 'apm_funnel_clickmagic_term_script'
wp option delete 'apm_snippet_updated_in_master'
wp option delete 'apm_apm_cron_daily'
wp option delete 'apm_apm_cron_weekly'
wp option delete 'apm_cron_weekly_time'
wp option delete 'apm_share_success_category'
wp option delete 'apm_apm_post_schedule'
wp option delete 'apm_share_success_headline'
wp option delete 'apm_social_share_message'
wp option delete 'apm_set_success_story_amount'
wp option delete 'apm_share_success_image'
wp option delete 'apm_subscription_curr_ver'
wp option delete 'apm_subscription_prev_ver'
wp option delete 'success_story_last_execution_time'
wp option delete '_apm_achieved_milestones'

# Clear Cron Jobs
wp cron event delete 'ws_cron_hook'
wp cron event delete 'apm_social_post_weekly_cron_hook'
wp cron event delete 'apm_social_post_regular_cron_hook'
wp cron event delete 'apm_social_post_daily_cron_hook'

