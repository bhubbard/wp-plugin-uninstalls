#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'foursquare-feedURL'
wp option delete 'foursquare-enableMap'
wp option delete 'foursquare-numCheckins'

