#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dcfpp_billing_settings'
wp option delete 'dcfpp_extra_settings'
wp option delete 'dcfpp_shipping_settings'
wp option delete 'dcfpp_additional_settings'
wp option delete 'dcfpp_additional_fees'

