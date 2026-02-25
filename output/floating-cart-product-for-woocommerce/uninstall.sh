#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fcpfw_select2'
wp option delete 'fcpfw_product_out_of_stock'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%fgwerror' OR option_name LIKE '_site_transient_%fgwerror'"

