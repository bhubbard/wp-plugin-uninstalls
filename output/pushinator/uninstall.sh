#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushinator_db_version'
wp option delete 'pushinator_api_token'

