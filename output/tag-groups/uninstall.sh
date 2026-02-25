#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tag_group_admin_notice'
wp option delete 'tag_group_shortcode_widget'
wp option delete 'tag_group_shortcode_enqueue_always'
wp option delete 'tag_group_tags_filter'
wp option delete 'tag_group_reset_when_uninstall'
wp option delete 'tag_group_sample_page_id'
wp option delete 'tag_group_taxonomy'
wp option delete 'tag_group_base_first_activation_time'
wp option delete 'tag_group_labels'
wp option delete 'tag_group_ids'
wp option delete 'max_tag_group_id'
wp option delete 'chatty_mango_cache'
wp option delete 'term_group_labels'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'term_group_labels_%'"
wp option delete 'tag_group_group_languages'
wp option delete 'classic-editor-replace'

# Clear Cron Jobs
wp cron event delete 'tag_groups_check_tag_migration'
wp cron event delete 'tag_groups_purge_expired_transients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cm_term_group_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cm_term_group_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cm_term_group_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cm_term_group_array'"
