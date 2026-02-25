#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'textdrift_appkey'
wp option delete 'textdrift_active'
wp option delete 'textdrift_photo'

