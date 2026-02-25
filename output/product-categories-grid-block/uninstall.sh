#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pcgb_category_products_%' OR option_name LIKE '_site_transient_pcgb_category_products_%'"

