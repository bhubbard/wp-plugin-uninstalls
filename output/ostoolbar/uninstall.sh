#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ostoolbar_permissions'
wp option delete 'ostoolbar_apikey'
wp option delete 'ostoolbar_videos'

