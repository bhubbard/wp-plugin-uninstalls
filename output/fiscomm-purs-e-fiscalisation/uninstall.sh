#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fiscalisation_training_mode_enabled'
wp option delete 'fiscalisation_refund_mode_enabled'
wp option delete 'fiscalisation_shipping_mode_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_proforma_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_proforma_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_purs'"
wp option delete 'fiscalisation_api_key'
wp option delete 'fiscalisation_shipping_mode_item_name'
wp option delete 'fiscalisation_training_mode_email'
wp option delete 'fiscalisation_default_tax_label'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vpfr_buyer_id_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vpfr_buyer_id_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vpfr_buyer_id_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vpfr_buyer_id_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vpfr_buyer_id_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vpfr_buyer_id_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vpfr_buyer_id_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vpfr_buyer_id_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_verification_url%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_verification_url%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_verification_url%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_verification_url%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verification_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verification_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verification_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verification_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vpfr_wc_labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vpfr_wc_labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vpfr_wc_labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vpfr_wc_labels'"
