#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ua_tracking_code'
wp option delete 'utma_cookie'
wp option delete 'gimmelink'

