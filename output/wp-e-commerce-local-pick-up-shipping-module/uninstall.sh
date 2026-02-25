#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'local_pickup_options'
wp option delete 'do_not_use_shipping'
wp option delete 'base_country'

