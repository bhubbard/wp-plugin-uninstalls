#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbi_tenant_id'
wp option delete 'bbi_enable_debug_logging'
wp option delete 'bbi_products_csv_enabled'
wp option delete 'bbi_products_csv_path'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bb_session_%' OR option_name LIKE '_site_transient_bb_session_%'"

