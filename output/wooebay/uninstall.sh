#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooebay_options'
wp option delete 'wooebay_export_data'
wp option delete 'wooebay_products_file_name'
wp option delete 'wooebay_tmplate_opt'

