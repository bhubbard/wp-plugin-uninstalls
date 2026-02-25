#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp2neteaseuser'
wp option delete 'wp2neteasepass'
wp option delete 'wp2neteaseurl'
wp option delete 'netease_sdurl'
wp option delete 'netease_allowview'
wp option delete 'netease_msyn'

