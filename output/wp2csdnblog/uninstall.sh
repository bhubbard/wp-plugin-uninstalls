#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp2csdnblog_title'
wp option delete 'wp2csdnblog_user'
wp option delete 'wp2csdnblog_password'
wp option delete 'wp2csdnblog_url'
wp option delete 'wp2sinablog_user'
wp option delete 'wp2sinablog_pass'
wp option delete 'wp2neteaseblog_user'
wp option delete 'wp2neteaseblog_pass'
wp option delete 'wp2csdnblog_issync'
wp option delete 'wp2csdnblog_isaddlink'

