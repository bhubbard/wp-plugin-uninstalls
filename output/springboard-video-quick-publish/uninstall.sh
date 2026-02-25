#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sb_pub_id'
wp option delete 'sb_api_key'
wp option delete 'sb_player'

