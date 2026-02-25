#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmufastver_google'
wp option delete 'wpmufastver_yahoo'
wp option delete 'wpmufastver_bing'
wp option delete 'wpmufastver_alexa'

