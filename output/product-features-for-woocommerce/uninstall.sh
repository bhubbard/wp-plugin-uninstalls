#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pffwc_textarea_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pffwc_textarea_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pffwc_textarea_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pffwc_textarea_meta_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pffwc_product_key_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pffwc_product_key_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pffwc_product_key_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pffwc_product_key_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pffwc_text_field_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pffwc_text_field_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pffwc_text_field_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pffwc_text_field_meta_value_key'"
