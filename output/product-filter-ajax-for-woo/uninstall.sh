#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wapf_options'
wp option delete 'wapf_queried_termid'
wp option delete 'wapf_queried_is_cat'
wp option delete 'wapf_queried_is_shop'
wp option delete 'woocommerce_default_catalog_orderby'

