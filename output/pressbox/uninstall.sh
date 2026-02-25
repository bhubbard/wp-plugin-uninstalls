#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lh_pressbox_consumer_key'
wp option delete 'lh_pressbox_consumer_secret'
wp option delete 'lh_pressbox_access_token'
wp option delete 'lh_pressbox_access_token_secret'
wp option delete 'lh_pressbox_default_path'
wp option delete 'lh_pressbox_show_thumbnails'
wp option delete 'lh_pressbox_favorites'
wp option delete 'lh_pressbox_uid'
wp option delete 'lh_pressbox_oauth_token'
wp option delete 'lh_pressbox_oauth_token_secret'
wp option delete 'lh_pressbox_display_name'
wp option delete 'lh_pressbox_quota'
wp option delete 'lh_pressbox_shared'
wp option delete 'lh_pressbox_normal'

