#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scon_order_number_prefix'
wp option delete 'scon_order_number_suffix'
wp option delete 'scon_sunarc_enabled'

