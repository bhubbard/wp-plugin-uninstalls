#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'planfy_just_activated'
wp option delete 'planfy_code'
wp option delete 'planfy_account_url'

