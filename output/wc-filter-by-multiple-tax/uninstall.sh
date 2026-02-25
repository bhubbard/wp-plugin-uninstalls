#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wc_filter_relate_term_product_cat'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_filter_relate_term_%' OR option_name LIKE '_site_transient_wc_filter_relate_term_%'"

