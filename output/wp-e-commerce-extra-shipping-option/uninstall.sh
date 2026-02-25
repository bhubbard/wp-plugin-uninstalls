#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_shipping_options'
wp option delete 'do_not_use_shipping'

