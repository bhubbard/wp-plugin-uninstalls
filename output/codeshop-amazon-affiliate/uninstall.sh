#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'caaps_amazon-product-shop-settings'
wp option delete 'caaps_amazon-product-shop-displayoptions'
wp option delete 'caaps_amazonshop_frontpageid'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_caaps_transient_%' OR option_name LIKE '_site_transient_caaps_transient_%'"

