#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'default_product_cat'
wp option delete 'woocommerce_default_catalog_orderby'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sample_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sample_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sample_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sample_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_woo_builder_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_woo_builder_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_woo_builder_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_woo_builder_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_woo_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_woo_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_woo_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_woo_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
