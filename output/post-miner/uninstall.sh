#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post-miner_recommendations_header'
wp option delete 'post-miner_recommendations_limit'
wp option delete 'post-miner_db_version'

