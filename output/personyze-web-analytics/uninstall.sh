#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'personyze_account_id'
wp option delete 'personyze_tracking_domains'
wp option delete 'personyze_track_add_to_cart'
wp option delete 'personyze_track_purchase'

