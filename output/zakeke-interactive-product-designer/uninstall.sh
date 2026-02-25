#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zakeke_do_activation_redirect'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'zakeke_version'
wp option delete 'woocommerce_tax_round_at_subtotal'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zakeke_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zakeke_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zakeke_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zakeke_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zakeke_configurator_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zakeke_configurator_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zakeke_configurator_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zakeke_configurator_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zakeke_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zakeke_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zakeke_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zakeke_provider'"
