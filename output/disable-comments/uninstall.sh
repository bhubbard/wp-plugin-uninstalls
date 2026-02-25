#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'disable_comments_sitewide_settings'
wp option delete 'disable_comments_options'
wp option delete 'disable_comments_post_types'
wp option delete 'disable_comment_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_allow_tracking'
wp option delete 'wpins_last_track_time'
wp option delete 'wpins_block_notice'

# Delete Transients
wp transient delete 'wc_count_comments'

