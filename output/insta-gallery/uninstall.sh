#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_protect_active'
wp option delete 'jetpack_offline_mode'
wp option delete 'wpcom_public_coming_soon'
wp option delete 'insta_gallery_settings'
wp option delete 'insta_gallery_setting'
wp option delete 'insta_gallery_items'
wp option delete 'insta_gallery_feeds'
wp option delete 'insta_gallery_token'
wp option delete 'insta_gallery_accounts'
wp option delete 'insta_gallery_iac'
wp option delete 'cron'

# Delete Transients
wp transient delete 'jetpack_is_single_user'
wp transient delete 'quadlayers_news_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ql_plugin_feedback_%' OR option_name LIKE '_site_transient_ql_plugin_feedback_%'"

# Clear Cron Jobs
wp cron event delete 'qligg_cron_account'

