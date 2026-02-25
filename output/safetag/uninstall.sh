#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'safetag_license_key'
wp option delete 'safetag_iab_tag_option'
wp option delete 'safetag_exclution_list_chron_option'
wp option delete 'site_audience_iab_tags'
wp option delete 'safetag_post_types'
wp option delete 'safetag_version'

# Delete Transients
wp transient delete 'safetag_post_types'
wp transient delete 'iab_tags_resources'
wp transient delete 'iab_audience_tags'

# Clear Cron Jobs
wp cron event delete 'safetag_update_post_keywords_result'
wp cron event delete 'safetag_check_license_status'
wp cron event delete 'safetag_update_post_keywords_result_temp'
wp cron event delete 'safetag_add_update_post_campaign_keyword_status_temp'
wp cron event delete 'safetag_genetate_post_campaign_table_record_temp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'safetag_hide_programmatic_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'safetag_hide_programmatic_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'safetag_hide_programmatic_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'safetag_hide_programmatic_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'safetag_meta_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'safetag_meta_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'safetag_meta_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'safetag_meta_tags'"
