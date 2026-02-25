#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'lzb_db_version'

# Delete Transients
wp transient delete 'lazy_blocks_deactivated_notice_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lzb_template_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lzb_template_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lzb_template_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lzb_template_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lzb_template_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lzb_template_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lzb_template_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lzb_template_blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lzb_template_convert_blocks_to_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lzb_template_convert_blocks_to_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lzb_template_convert_blocks_to_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lzb_template_convert_blocks_to_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lzb_template_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lzb_template_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lzb_template_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lzb_template_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lzb_template_post_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lzb_template_post_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lzb_template_post_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lzb_template_post_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazyblocks_code_use_php'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazyblocks_code_use_php'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazyblocks_code_use_php'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazyblocks_code_use_php'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazyblocks_code_output_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazyblocks_code_output_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazyblocks_code_output_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazyblocks_code_output_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
