#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cartlimit_min'
wp option delete 'cartlimit_max'
wp option delete 'product_limit_check'

