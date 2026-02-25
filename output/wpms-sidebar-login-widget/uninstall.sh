#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'network_sidebar_login_rememberme'
wp option delete 'network_sidebar_login_subscribe_main_site'
wp option delete 'network_sidebar_login_subscribe_other_blog'
wp option delete 'network_sidebar_login_forum_installed'
wp option delete 'network_sidebar_login_forum_url'
wp option delete 'network_sidebar_login_css'
wp option delete 'network_sidebar_login_custom_url'
wp option delete 'network_sidebar_login_subblog'

