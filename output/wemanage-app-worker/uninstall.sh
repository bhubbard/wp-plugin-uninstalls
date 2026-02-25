#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'nvl_wl_n'
wp option delete 'nvl_wl_d'
wp option delete 'nvl_wl_a'
wp option delete 'nouvello-worker-activation-key'
wp option delete 'nvl_wemanage_worker_wp'
wp option delete 'nvl_wemanage_worker_wc'
wp option delete 'site_admins'
wp option delete 'nouvello_redirect_after_activation_option'

# Delete Transients
wp transient delete 'nvl_wemanage_manual'
wp transient delete 'ns-wmw-key'
wp transient delete 'ns-wmw-secret'
wp transient delete 'ns-wmw-wc-key'
wp transient delete 'ns-wmw-wc-secret'

