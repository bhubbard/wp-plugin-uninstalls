-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apm_funnel_pageid_mapping_data', 'apm_funnel_slug_mapping_data', 'apm_funnel_prospect_tags', 'apm_funnel_clickmagic_script', 'apm_funnel_status_mapping_data', 'apm_funnel_termid_mapping_data', 'apm_funnel_slug_term_mapping_data', 'apm_funnel_optin_default_display', 'apm_funnel_clickmagic_term_script', 'apm_snippet_updated_in_master', 'apm_apm_cron_daily', 'apm_apm_cron_weekly', 'apm_cron_weekly_time', 'apm_share_success_category', 'apm_apm_post_schedule', 'apm_share_success_headline', 'apm_social_share_message', 'apm_set_success_story_amount', 'apm_share_success_image', 'apm_subscription_curr_ver', 'apm_subscription_prev_ver', 'success_story_last_execution_time', '_apm_achieved_milestones');

