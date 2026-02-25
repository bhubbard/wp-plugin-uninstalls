#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp2baiduzone_user'
wp option delete 'wp2baiduzone_password'
wp option delete 'wp2baiduzone_url'
wp option delete 'wp2baiduzone_blogpower'
wp option delete 'wp2baiduzone_isaddlink'
wp option delete 'wp2baiduzone_issync'

