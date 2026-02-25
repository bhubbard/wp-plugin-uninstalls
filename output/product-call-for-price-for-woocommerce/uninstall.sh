#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfpfw_enable'
wp option delete 'cfpfw_product'
wp option delete 'pcfpfw_zero'
wp option delete 'pcfpfw_status'
wp option delete 'cfpfw_price_enable'
wp option delete 'cfpfw_min_price'
wp option delete 'cfpfw_max_price'
wp option delete 'cfpfw_change_text'

