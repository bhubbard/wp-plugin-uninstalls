#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptr_analytics_code'
wp option delete 'ptr_tagmanager_code'
wp option delete 'ptr_noscript_code'

