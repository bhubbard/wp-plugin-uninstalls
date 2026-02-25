#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ovesio_ecommerce_hash'
wp option delete 'ovesio_ecommerce_status'
wp option delete 'ovesio_ecommerce_export_duration'
wp option delete 'ovesio_ecommerce_order_states'

