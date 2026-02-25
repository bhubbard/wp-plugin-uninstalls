#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buyte_charge_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buyte_charge_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buyte_charge_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buyte_charge_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buyte_payment_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buyte_payment_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buyte_payment_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buyte_payment_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buyte_provider_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buyte_provider_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buyte_provider_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buyte_provider_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buyte_provider_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buyte_provider_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buyte_provider_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buyte_provider_reference'"
