#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avecdo_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'avecdo_plugin_activated'
wp option delete 'avecdo_public_key'
wp option delete 'avecdo_private_key'
wp option delete 'avecdo_use_description'
wp option delete 'avecdo_language'
wp option delete 'avecdo_currency'
wp option delete 'avecdo_multi_lang_props'
wp option delete 'avecdo_activation_key'
wp option delete 'avecdo_v2_plugin_activated'
wp option delete 'avecdo_v2_public_key'
wp option delete 'avecdo_v2_private_key'
wp option delete 'avecdo_v2_use_description'
wp option delete 'avecdo_v2_language'
wp option delete 'avecdo_v2_currency'
wp option delete 'avecdo_v2_multi_lang_props'
wp option delete 'avecdo_v2_activation_key'

# Delete Transients
wp transient delete '__avecdo_update_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avecdo_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avecdo_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avecdo_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avecdo_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avecdo_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avecdo_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avecdo_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avecdo_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avecdo_upc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avecdo_upc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avecdo_upc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avecdo_upc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avecdo_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avecdo_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avecdo_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avecdo_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avecdo_isbn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avecdo_isbn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avecdo_isbn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avecdo_isbn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avecdo_jan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avecdo_jan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avecdo_jan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avecdo_jan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
