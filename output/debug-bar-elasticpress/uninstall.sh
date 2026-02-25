#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ep_enable_logging'
wp option delete 'ep_query_log_by_status'
wp option delete 'ep_query_log_by_context'

