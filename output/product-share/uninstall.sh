#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product_share_option'
wp option delete 'product_share_option_advanced'
wp option delete 'product_share_license'

