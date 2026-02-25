#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'up_number_of_days'
wp option delete 'up_puzo_cache'
wp option delete 'up_puzo'

