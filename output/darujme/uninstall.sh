#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'

# Delete Transients
wp transient delete 'darujme_donors'
wp transient delete 'darujme_pledges'

