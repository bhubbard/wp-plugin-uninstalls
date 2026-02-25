#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mlockdown_status'
wp option delete 'mlock_basic_auth'
wp option delete 'mlockdown_rest_api'

