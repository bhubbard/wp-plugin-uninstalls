#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epw_post_type'
wp option delete 'epw_frequency'
wp option delete 'epw_expiration_time'
wp option delete 'epw_setting_time'
wp option delete 'epw_expire'

# Clear Cron Jobs
wp cron event delete 'expire_posts'

