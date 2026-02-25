#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'justawesome_woocommerce_redirect_type'
wp option delete 'justawesome_woocommerce_redirect_url'
wp option delete 'justawesome_woocommerce_redirect_pageid'
wp option delete 'justawesome_woocommerce_redirect_productid'
wp option delete 'woocommerce_shop_page_id'

