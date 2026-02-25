#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fspi_inquiry_form_fields'
wp option delete '_fspi_server_url'
wp option delete '_fspi_license_settings'
wp option delete '_fspi_email_heading_text'
wp option delete '_fspi_email_footer_text'
wp option delete '_fspi_email_from'
wp option delete '_fspi_email_from_address'
wp option delete '_fspi_customer_email_sub'
wp option delete '_fspi_customer_email_body_text'
wp option delete '_fspi_email_admin'
wp option delete '_fspi_admin_email_sub'
wp option delete '_fspi_admin_email_body_text'
wp option delete '_fspi_inquiry_form_open_in_popup'
wp option delete '_fspi_product_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fs_short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fs_short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fs_short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fs_short_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fs_product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fs_product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fs_product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fs_product_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fs_product_selling_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fs_product_selling_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fs_product_selling_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fs_product_selling_price'"
