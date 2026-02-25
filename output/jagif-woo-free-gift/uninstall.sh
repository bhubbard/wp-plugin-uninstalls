#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jagif_list_product_gift'
wp option delete 'jagif_woo_free_gift_params'
wp option delete 'jagif_display_conditions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jagif-woo_free_gift_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jagif-woo_free_gift_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jagif-woo_free_gift_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jagif-woo_free_gift_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jagif-woo_free_gift_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jagif-woo_free_gift_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jagif-woo_free_gift_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jagif-woo_free_gift_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jagif-woo_free_gift_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jagif-woo_free_gift_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jagif-woo_free_gift_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jagif-woo_free_gift_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jagif-woo_free_gift_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jagif-woo_free_gift_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jagif-woo_free_gift_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jagif-woo_free_gift_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jagif-woo_free_gift_gift'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jagif-woo_free_gift_gift'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jagif-woo_free_gift_gift'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jagif-woo_free_gift_gift'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jagif_gift_pack_in_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jagif_gift_pack_in_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jagif_gift_pack_in_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jagif_gift_pack_in_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jagif_qty_gift_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jagif_qty_gift_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jagif_qty_gift_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jagif_qty_gift_order'"
