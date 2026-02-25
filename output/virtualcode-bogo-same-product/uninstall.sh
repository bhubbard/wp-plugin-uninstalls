#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vc_bogo_activation_error'
wp option delete 'vc_bogo_enabled'
wp option delete 'vc_bogo_selected_products'
wp option delete 'vc_bogo_scope'

