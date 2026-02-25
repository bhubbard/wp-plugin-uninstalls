#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcfee_enable'
wp option delete 'wcfee_label'
wp option delete 'wcfee_type'
wp option delete 'wcfee_fixed'
wp option delete 'wcfee_percentage'
wp option delete 'wcfee_enable_minimum'
wp option delete 'wcfee_enable_maximum'
wp option delete 'wcfee_enable_product_filter'
wp option delete 'wcfee_minimum'
wp option delete 'wcfee_maximum'
wp option delete 'wcfee_product_filter'

