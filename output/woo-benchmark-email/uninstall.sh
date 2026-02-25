#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bmew_sister_dismissed'
wp option delete 'bmew_key'
wp option delete 'bmew_usage_disable'
wp option delete 'bmew_debug'
wp option delete 'bmew_checkout_reorder'
wp option delete 'bmew_checkout_optin_label'
wp option delete 'bmew_skip_cart'

