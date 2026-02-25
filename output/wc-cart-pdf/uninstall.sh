#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_cart_pdf_button_label'
wp option delete 'wc_cart_pdf_logo'
wp option delete 'wc_cart_pdf_logo_width'
wp option delete 'wc_cart_pdf_logo_alignment'
wp option delete 'wc_cart_pdf_open_pdf'
wp option delete 'wc_cart_pdf_copy_admin'
wp option delete 'wc_cart_pdf_show_checkout'
wp option delete 'wc_cart_pdf_capture_customer'
wp option delete 'wc_cart_pdf_unique_increment'
wp option delete 'wc_cart_pdf_modal_capture'
wp option delete 'woocommerce_email_header_image'
wp option delete 'wc_cart_pdf_unique_increment_num'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_text_color'

