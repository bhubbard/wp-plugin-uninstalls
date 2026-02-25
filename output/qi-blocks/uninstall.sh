#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qi_blocks_setup_wizard'
wp option delete 'qi_blocks_global_settings_typography'
wp option delete 'qi_blocks_global_settings_typography_styles'
wp option delete 'qi_blocks_global_settings_typography_apply_to'
wp option delete 'qi_blocks_global_styles'
wp option delete 'widget_block'
wp option delete 'qi_blocks_cropped_images'
wp option delete 'qi_blocks_custom_templates_flag'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_enable_review_rating'

# Delete Transients
wp transient delete 'qi_blocks_check_theme_gutenberg_style'
wp transient delete '_qi_blocks_get_the_block_template_html '
wp transient delete '_qi_blocks_get_the_block_template_html'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
