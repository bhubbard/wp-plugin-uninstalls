#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ac_logging'
wp option delete 'ipacn_api_key'
wp option delete 'ipacn_api_url'
wp option delete 'ipacn_from_name'
wp option delete 'ipacn_from_email'
wp option delete 'ipacn_reply_to'
wp option delete 'ipacn_logging'

# Clear Cron Jobs
wp cron event delete 'ipacn_logcleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_deployment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_deployment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_deployment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_deployment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_hh'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_hh'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_hh'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_hh'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_mm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_mm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_mm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_mm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_ampm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_ampm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_ampm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_ampm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'test_recipient'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'test_recipient'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'test_recipient'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'test_recipient'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'message_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'message_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'message_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'message_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaign_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipacn_deployment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipacn_deployment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipacn_deployment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipacn_deployment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailing_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailing_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailing_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailing_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailing_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailing_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailing_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailing_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duplicated_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duplicated_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duplicated_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duplicated_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'TrackId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'TrackId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'TrackId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'TrackId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailing_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailing_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailing_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailing_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acfetch_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acfetch_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acfetch_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acfetch_url'"
