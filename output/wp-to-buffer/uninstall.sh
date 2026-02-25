#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-request'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-access-token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-refresh-token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-token-expires'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_buffer_api_profiles' OR option_name LIKE '_site_transient_%_buffer_api_profiles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_twitter_api_usernames' OR option_name LIKE '_site_transient_%_twitter_api_usernames'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_success'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_success'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_success'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_success'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_needs_publishing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_needs_publishing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_needs_publishing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_needs_publishing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_needs_updating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_needs_updating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_needs_updating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_needs_updating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_sent'"
