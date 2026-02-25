#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eu_vat_guard_hide_registration_fields'
wp option delete 'eu_vat_guard_require_company'
wp option delete 'eu_vat_guard_require_vat'
wp option delete 'eu_vat_guard_require_vies'
wp option delete 'eu_vat_guard_ignore_vies_error'
wp option delete 'eu_vat_guard_enable_block_checkout'
wp option delete 'eu_vat_guard_disable_exemption'
wp option delete 'eu_vat_guard_fixed_prices'
wp option delete 'eu_vat_guard_company_label'
wp option delete 'eu_vat_guard_vat_label'
wp option delete 'eu_vat_guard_exemption_message'
wp option delete 'eu_vat_guard_override_b2b_plugins'
wp option delete 'woocommerce_tax_classes'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eu_vat_guard_admin_error_%' OR option_name LIKE '_site_transient_eu_vat_guard_admin_error_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_is_vat_exempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_is_vat_exempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_is_vat_exempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_is_vat_exempt'"
