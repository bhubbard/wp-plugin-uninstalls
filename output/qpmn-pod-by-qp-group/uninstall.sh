#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qpson_store_apikey'
wp option delete 'qpson_store_url'
wp option delete 'qpson_store_name'
wp option delete 'qpson_store_id'
wp option delete 'qpson_enable_tax_calculate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qpson_store_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qpson_store_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qpson_store_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qpson_store_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qpson_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qpson_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qpson_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qpson_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qpson_publishProfileIds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qpson_publishProfileIds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qpson_publishProfileIds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qpson_publishProfileIds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qpson_publishProfileCodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qpson_publishProfileCodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qpson_publishProfileCodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qpson_publishProfileCodes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qpson_attributeVersion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qpson_attributeVersion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qpson_attributeVersion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qpson_attributeVersion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qpson_propertyModelId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qpson_propertyModelId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qpson_propertyModelId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qpson_propertyModelId'"
