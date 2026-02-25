#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayudawp_lowest_prices_options'

# Delete Transients
wp transient delete 'ayudawp_update_default_text'
wp transient delete 'ayudawp_lowest_prices_activation_notice'

