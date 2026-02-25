#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_pdc_columns'
wp option delete 'wc_pdc_product_images'
wp option delete 'wc_pdc_upsells'
wp option delete 'wc_pdc_related'
wp option delete 'wc_pdc_tabs'

