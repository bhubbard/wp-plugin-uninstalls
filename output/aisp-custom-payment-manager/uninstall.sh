#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aisp_custom_payment_method_1_enabled'
wp option delete 'aisp_custom_payment_method_2_enabled'
wp option delete 'aisp_custom_payment_method_3_enabled'

