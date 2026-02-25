#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blockbolt_merchant_name'
wp option delete 'blockbolt_blockchains'
wp option delete 'woocommerce_blockbolt_offsite_settings'

