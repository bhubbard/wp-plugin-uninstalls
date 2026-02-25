#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hello_elementor_settings_description_meta_tag'
wp option delete '_nfproot_plugins_settings'
wp option delete '_nfp_root_settings'
wp option delete '_nfp_settings'
wp option delete 'woocommerce_shop_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfpndx_llms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfpndx_llms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfpndx_llms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfpndx_llms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfpndx_no_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfpndx_no_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfpndx_no_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfpndx_no_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfpndx_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfpndx_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfpndx_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfpndx_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfpndx_meta_title_blogname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfpndx_meta_title_blogname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfpndx_meta_title_blogname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfpndx_meta_title_blogname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfpndx_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfpndx_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfpndx_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfpndx_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
