#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_registration_generate_username'

# Delete Transients
wp transient delete 'ptwoo_simple_order_approval_nag'

