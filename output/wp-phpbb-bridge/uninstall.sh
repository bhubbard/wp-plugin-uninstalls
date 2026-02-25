#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbb_config_path'
wp option delete 'wpbb_ucp_path'
wp option delete 'wpbb_avatars'
wp option delete 'wpbb_activate'
wp option delete 'wpbb_dbms_charset'
wp option delete 'wpbb_deactivation_password'
wp option delete 'wpbb_maximu_retries'
wp option delete 'wpbb_times'
wp option delete 'wpbb_post_posts'
wp option delete 'wpbb_post_locked'
wp option delete 'wpbb_width'
wp option delete 'widget_wpb_user'
wp option delete 'wpbb_backlink'
wp option delete 'wpbb_users_posting'
wp option delete 'wpbb_forums_categories'
wp option delete 'wpbb_version'
wp option delete 'wpb_active'
wp option delete 'wpb_avatar'
wp option delete 'wpb_path'
wp option delete 'wpb_url'
wp option delete 'wpbb_t'
wp option delete 'wpbb_rewrite'

