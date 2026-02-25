#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'INTAPYBTN_publishable_key'
wp option delete 'INTAPYBTN_wpi_default_amount'
wp option delete 'INTAPYBTN_redirect_url'
wp option delete 'INTAPYBTN_live_key'

