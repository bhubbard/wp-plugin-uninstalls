#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brt-dtt-next_number'
wp option delete 'brt-dtt-mitt_default'
wp option delete 'brt-dtt-tracking_enable'
wp option delete 'brt-dtt-tracking_required'
wp option delete 'brt-dtt-tracking_length'
wp option delete 'brt-dtt-checkformat'
wp option delete 'brt-dtt-cod-mitt'

