#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zbbs_block_stats'
wp option delete 'zbbs_404_limit'
wp option delete 'zbbs_404_window'
wp option delete 'zbbs_blocked_countries'

