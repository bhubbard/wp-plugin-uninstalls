#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dlmc_bot_token'
wp option delete 'dlmc_error_logs'
wp option delete 'dlmc_members_count'

