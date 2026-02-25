#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stellate_service_name'
wp option delete 'stellate_purging_token'
wp option delete 'stellate_soft_purge'

