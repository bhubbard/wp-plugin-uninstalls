#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayudawp_esm_activated'
wp option delete 'ayudawp_esm_version'
wp option delete 'woocommerce_store_address'

