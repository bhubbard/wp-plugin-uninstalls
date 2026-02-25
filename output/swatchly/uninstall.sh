#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swatchly_diagnostic_data_agreed'
wp option delete 'swatchly_diagnostic_data_notice'
wp option delete 'swatchly_delete_data_fetch_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer'"
wp option delete 'force_update_swatchly_notice_info'
wp option delete 'swatchly_rating_already_rated'
wp option delete 'swatchly_options'
wp option delete 'csf_demo_mode'
wp option delete 'swatchly_installed'
wp option delete 'swatchly_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_htiop_data' OR option_name LIKE '_site_transient_%_htiop_data'"
wp transient delete 'swatchly_notice_info'
wp transient delete 'swatchly_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swatchly_product_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swatchly_product_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swatchly_product_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swatchly_product_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swatchly_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swatchly_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swatchly_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swatchly_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swatchly_enable_multi_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swatchly_enable_multi_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swatchly_enable_multi_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swatchly_enable_multi_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swatchly_color_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swatchly_color_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swatchly_color_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swatchly_color_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swatchly_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swatchly_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swatchly_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swatchly_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swatchly_tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swatchly_tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swatchly_tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swatchly_tooltip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swatchly_tooltip_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swatchly_tooltip_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swatchly_tooltip_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swatchly_tooltip_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swatchly_tooltip_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swatchly_tooltip_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swatchly_tooltip_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swatchly_tooltip_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swatchly_tooltip_image_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swatchly_tooltip_image_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swatchly_tooltip_image_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swatchly_tooltip_image_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swatchly_image_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swatchly_image_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swatchly_image_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swatchly_image_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
