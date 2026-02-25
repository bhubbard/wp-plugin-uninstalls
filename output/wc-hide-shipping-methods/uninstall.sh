#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_hide_shipping_options'
wp option delete 'wc_hide_shipping_additional_methods'

