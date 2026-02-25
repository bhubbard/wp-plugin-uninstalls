#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pages_setting'
wp option delete 'ccgquickly_media'
wp option delete 'ccgquickly_addmedia'
wp option delete 'ccgquickly_settings'
wp option delete 'ccgquickly_post'
wp option delete 'ccgquickly_addpost'
wp option delete 'ccgquickly_tools'
wp option delete 'ccgquickly_users'

