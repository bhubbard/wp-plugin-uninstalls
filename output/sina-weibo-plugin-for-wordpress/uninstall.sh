#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weibo_oauth_token'
wp option delete 'weibo_oauth_secret'

