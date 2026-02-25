#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tsm_quote'
wp option delete 'facebook_comments_master_system_wide_app'
wp option delete 'facebook_comments_master_system_wide_app_id'
wp option delete 'facebook_comments_master_system_wide_user'
wp option delete 'facebook_comments_master_system_wide_user_id'
wp option delete 'facebook_comments_master_system_wide_lang'
wp option delete 'facebook_comments_master_system_wide_lang_set'

