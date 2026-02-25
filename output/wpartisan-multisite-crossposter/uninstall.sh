#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mscp_user_blogs_%' OR option_name LIKE '_site_transient_mscp_user_blogs_%'"

# Clear Cron Jobs
wp cron event delete 'mscp_aggregate_post'
wp cron event delete 'mscp_aggregate_post_taxonomy'
wp cron event delete 'mscp_aggregate_post_deletion'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aggregator_orig_blog_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aggregator_orig_blog_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aggregator_orig_blog_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aggregator_orig_blog_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aggregator_orig_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aggregator_orig_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aggregator_orig_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aggregator_orig_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mscp_blogs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mscp_blogs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mscp_blogs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mscp_blogs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aggregator_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aggregator_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aggregator_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aggregator_permalink'"
