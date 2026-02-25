#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'polldaddy_api_key'
wp option delete 'crowdsignal_api_key_secret'
wp option delete 'polldaddy_settings'
wp option delete 'polldaddy_use_ssl'
wp option delete 'polldaddy_multiple_accounts'
wp option delete 'polldaddy_load_poll_inline'
wp option delete 'pd-rating-usercode'
wp option delete 'pd-rating-title-filter'
wp option delete 'pd-rating-posts-id'
wp option delete 'pd-rating-pages-id'
wp option delete 'pd-rating-comments-id'
wp option delete 'polldaddy_usercode_user'
wp option delete 'crowdsignal_user_code'
wp option delete 'jetpack_active_modules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pd-usercode-%'"
wp option delete 'crowdsignal_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pd-rating-%'"
wp option delete 'pd-rich-snippets'
wp option delete 'pd-rating-posts'
wp option delete 'pd-rating-posts-index'
wp option delete 'pd-rating-posts-pos'
wp option delete 'pd-rating-posts-index-pos'
wp option delete 'pd-rating-pages'
wp option delete 'pd-rating-pages-pos'
wp option delete 'pd-rating-comments'
wp option delete 'pd-rating-comments-pos'
wp option delete 'pd-rating-exclude-post-ids'
wp option delete 'pd-rating-exclude-page-ids'

# Clear Cron Jobs
wp cron event delete 'polldaddy_rating_update_job'

