#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bdt_biggopti_dismissals'
wp option delete 'bdt_usk_compare_products_page_id'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'ultimate_post_kit_license_key'
wp option delete 'ultimate_store_kit_active_modules'
wp option delete 'ultimate_store_kit_general_modules'
wp option delete 'ultimate_store_kit_edd_modules'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'elementor_viewport_lg'
wp option delete 'elementor_viewport_md'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ultimate_store_template_id_%' OR option_name LIKE '_site_transient_ultimate_store_template_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ultimate_store_template_sample_post_%' OR option_name LIKE '_site_transient_ultimate_store_template_sample_post_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'download_term_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'download_term_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'download_term_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'download_term_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
