#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uk_shipping_options_lite'
wp option delete 'do_not_use_shipping'
wp option delete 'base_country'

