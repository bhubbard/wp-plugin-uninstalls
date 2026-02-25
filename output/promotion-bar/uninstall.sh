#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'promobar_schedule'
wp option delete 'promobar_start_date'
wp option delete 'promobar_end_date'
wp option delete 'promobar_message'

