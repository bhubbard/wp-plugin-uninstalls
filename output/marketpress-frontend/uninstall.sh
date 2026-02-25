#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecommerce'
wp option delete 'posttitle'
wp option delete 'postdiscription'
wp option delete 'postauthor'
wp option delete 'postcategory'
wp option delete 'uploadimage'
wp option delete 'posttitleenabledisables'
wp option delete 'postdiscriptionenabledisable'
wp option delete 'postauthorenabledisable'
wp option delete 'postcategoryenabledisable'
wp option delete 'uploadimageenabledisable'
wp option delete 'posttaxonomies'
wp option delete 'captchaprivatekey'
wp option delete 'producttags'
wp option delete 'productsaleprice'
wp option delete 'downloadfile'
wp option delete 'productshortdiscription'
wp option delete 'uploadgalleyenabledisable'
wp option delete 'tagsenabledisable'
wp option delete 'expertsenabledisable'
wp option delete 'downloadableenabledisable'
wp option delete 'downloadablerequire'
wp option delete 'galleryimage'
wp option delete 'wpeditordisable'
wp option delete 'taghelp'
wp option delete 'wpeditorenable'
wp option delete 'posttags'
wp option delete 'woocommercevendor'
wp option delete 'productprice'
wp option delete 'uploaddownloadbutton'
wp option delete 'enablecaptcha'
wp option delete 'captchapublickey'
wp option delete 'updatebutton'
wp option delete 'uploadfeaturebutton'
wp option delete 'titlerequire'
wp option delete 'discriptionrequire'
wp option delete 'categoryrequire'
wp option delete 'featurerequire'
wp option delete 'galleryrequire'
wp option delete 'tagsrequire'
wp option delete 'expertrequire'
wp option delete 'submitbutton'
wp option delete 'imagesize'
wp option delete 'enablepostlimit'
wp option delete 'numberofpost'
wp option delete 'errornoofpost'
wp option delete 'woovendor'
wp option delete 'ecomemrcevendor'
wp option delete 'ecommercevendorrate'
wp option delete 'accesslevels'
wp option delete 'accesslevelserror'
wp option delete 'posttype'
wp option delete 'autopublish'
wp option delete 'guestpost'
wp option delete 'successmessage'
wp option delete 'addnew'
wp option delete 'mypost'
wp option delete 'uploadgallerybutton'
wp option delete 'updatesuccessmessage'
wp option delete 'custom_field_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_var_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_var_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_var_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_var_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_is_sale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_is_sale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_is_sale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_is_sale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_price_sort'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_price_sort'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_price_sort'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_price_sort'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_track_inventory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_track_inventory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_track_inventory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_track_inventory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_inventory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_inventory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_inventory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_inventory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_product_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_product_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_product_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_product_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_is_special_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_is_special_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_is_special_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_is_special_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_special_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_special_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_special_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_special_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_sales_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_sales_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_sales_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_sales_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
