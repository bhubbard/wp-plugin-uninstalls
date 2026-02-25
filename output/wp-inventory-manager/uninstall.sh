#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpim_default_data'
wp option delete 'wpim_license'
wp option delete 'wp_inventory_rewrite'

# Delete Transients
wp transient delete 'wpim_full_add_ons'
wp transient delete 'wpim_flush_rewrite_rules'
wp transient delete 'wpim_messages'

