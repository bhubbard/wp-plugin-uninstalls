#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tgpc_gift_wrapper_enabled'
wp option delete 'tgpc_gift_wrapper_location'
wp option delete 'tgpc_gift_wrapper_checkbox_label'
wp option delete 'tgpc_gift_wrapper_cost'
wp option delete 'tgpc_gift_wrapper_cost_tax_status'
wp option delete 'tgpc_gift_wrapper_tax_class'

