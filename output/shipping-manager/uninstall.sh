#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpsm-shipping-calculator_settings'
wp option delete 'tpsm-general_settings'
wp option delete 'TPSM_version'
wp option delete 'tpsm_is_setup_wizard'
wp option delete 'woocommerce_weight_unit'
wp option delete 'tpsm-free-shipping-barfree-shipping_settings'
wp option delete 'tpsm-shipping-fees_settings'
wp option delete 'tpsm-box-shipping_settings'
wp option delete 'tpsm-free-shipping_settings'

# Delete Transients
wp transient delete 'tpsm_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpsm_dismissed_setup_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpsm_dismissed_setup_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpsm_dismissed_setup_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpsm_dismissed_setup_notice'"
