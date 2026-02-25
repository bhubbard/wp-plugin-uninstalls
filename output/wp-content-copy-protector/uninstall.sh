#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wccp_settings'
wp option delete 'wccp_free_active_time'
wp option delete 'wccp_free_review_dismiss'

