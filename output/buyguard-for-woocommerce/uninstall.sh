#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_feature_custom_order_tables'
wp option delete 'buyguard_restriction_rules'

# Delete Transients
wp transient delete 'buyguard_cleanup_notice'
wp transient delete 'buyguard_rules_cache'
wp transient delete 'buyguard_activation_notice'

