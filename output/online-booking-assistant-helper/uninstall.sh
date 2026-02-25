#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'OBAFirstContactSmall'
wp option delete 'OBAFirstContactMedium'
wp option delete 'OBAFirstContactLarge'
wp option delete 'OBAReserveADate'
wp option delete 'OBAFeedback'

