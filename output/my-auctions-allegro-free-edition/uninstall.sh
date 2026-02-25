#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gjmaa_database_version'
wp option delete 'gjmaa_db_version'
wp option delete 'widget_gjmaa_allegro_widget'
wp option delete 'widget_gjmaa_auctions'
wp option delete 'gjwa_pro_product_synchronize_price'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gjmaa_category_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gjmaa_%'"
wp option delete 'woocommerce_notify_no_stock_amount'

# Delete Transients
wp transient delete 'gjmaa_reassign_last'
wp transient delete 'gjmaa_reassign_processedIds'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_allow_to_show_allegro_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_allow_to_show_allegro_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_allow_to_show_allegro_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_allow_to_show_allegro_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cta_to_show_allegro_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cta_to_show_allegro_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cta_to_show_allegro_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cta_to_show_allegro_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_allegro_auction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_allegro_auction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_allegro_auction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_allegro_auction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_allegro_do_not_sync_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_allegro_do_not_sync_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_allegro_do_not_sync_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_allegro_do_not_sync_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_allegro_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_allegro_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_allegro_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_allegro_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
