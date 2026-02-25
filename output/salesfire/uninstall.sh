#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'salesfire_tracking'
wp option delete 'salesfire_uuid'
wp option delete 'salesfire_product_prefix'

