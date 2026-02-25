#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edgwl_discount_message'
wp option delete 'edgwl_discount_min_quantity'
wp option delete 'edgwl_discount_percentage'

