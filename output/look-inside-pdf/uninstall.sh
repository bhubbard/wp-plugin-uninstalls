#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_lipdf_type_of_data_show_on_product_thumb'
wp option delete '_lipdf_read_more_image_link'
wp option delete '_lipdf_read_more_button_text'
wp option delete '_lipdf_show_read_more_button_after_product_thumb'
wp option delete '_lipdf_show_read_more_button_after_add_to_cart_button'
wp option delete 'look_inside_pdf_installed'
wp option delete 'look_inside_pdf_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_li_pdf_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_li_pdf_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_li_pdf_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_li_pdf_images'"
