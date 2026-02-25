#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'extra_fee_option_enabled'
wp option delete 'extra_fee_option_label'
wp option delete 'extra_fee_option_cost'
wp option delete 'extra_fee_option_type'
wp option delete 'extra_fee_option_taxable'
wp option delete 'extra_fee_option_minorder'

