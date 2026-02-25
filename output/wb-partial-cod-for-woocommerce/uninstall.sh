#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woobooster_partial_cod_enabled'
wp option delete 'woobooster_partial_cod_title_text'
wp option delete 'woobooster_partial_cod_amount'
wp option delete 'woobooster_partial_cod_amount_type'
wp option delete 'woobooster_partial_cod_extra_fees_enabled'
wp option delete 'woobooster_partial_cod_extra_fees'
wp option delete 'woobooster_partial_cod_extra_fees_title'
wp option delete 'woocommerce_tax_class'
wp option delete 'woobooster_partial_cod_extra_fees_tax'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrict_partial_cod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrict_partial_cod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrict_partial_cod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrict_partial_cod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'only_partial_cod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'only_partial_cod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'only_partial_cod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'only_partial_cod'"
