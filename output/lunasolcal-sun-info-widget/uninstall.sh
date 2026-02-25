#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'location'
wp option delete 'latitude'
wp option delete 'longitude'
wp option delete 'timezone'
wp option delete 'bgcolor'
wp option delete 'fgcolor'
wp option delete 'validLocation'

