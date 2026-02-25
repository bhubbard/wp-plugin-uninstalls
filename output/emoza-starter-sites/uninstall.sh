#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emwc_current_starter'
wp option delete '_emoza_sites_imported_customizer_mods'
wp option delete '_emoza_sites_imported_customizer_options'
wp option delete '_emoza_sites_imported_widgets'
wp option delete 'sidebars_widgets'
wp option delete 'elementor_active_kit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'woocommerce_queue_flush_rewrite_rules'
wp option delete 'wpforms_settings'
wp option delete 'emoza-modules'
wp option delete 'widget_nav_menu'
wp option delete 'emoza_wishlist_page_id'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp transient delete 'emwc_custom_import_settings'
wp transient delete 'emwc_no_active_theme'
wp transient delete 'emwc_importer_data'
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'emwc-goldseason'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_emoza_sites_imported_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_emoza_sites_imported_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_emoza_sites_imported_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_emoza_sites_imported_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_emoza_sites_imported_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_emoza_sites_imported_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_emoza_sites_imported_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_emoza_sites_imported_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
