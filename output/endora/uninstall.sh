#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'endora_reklama'
wp option delete 'endora_api'
wp option delete 'endora_rss'
wp option delete 'endora_dash_rss'
wp option delete 'endora_dash_api'

