#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thinkds_discount_strategy'
wp option delete 'thinkds_active_campaigns'

# Delete Transients
wp transient delete 'thinkds_admin_notice'

