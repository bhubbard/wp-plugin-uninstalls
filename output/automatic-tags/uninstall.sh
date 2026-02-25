#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpat_api_key'
wp option delete 'wpat_capital_strategy_cat'
wp option delete 'wpat_capital_strategy_tag'
wp option delete 'wpat_ignore_prior'

# Delete Transients
wp transient delete 'wpat_activation_admin_notice_transient'

