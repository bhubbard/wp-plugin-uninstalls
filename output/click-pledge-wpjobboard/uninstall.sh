#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpjb_config'
wp option delete 'wpjb_payment_method'
wp option delete 'taxes_enabled'

