#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wwcr_enable_checkout_review_page'
wp option delete 'wwcr_public_css_whereshow'
wp option delete 'wwcr_content_wrapper_selector'
wp option delete 'wwcr_terminology_review_order_text'
wp option delete 'wwcr_terminology_place_order_text'
wp option delete 'wwcr_billing_section_title'
wp option delete 'wwcr_billing_section_format'
wp option delete 'wwcr_shipping_section_title'
wp option delete 'wwcr_shipping_section_format'
wp option delete 'wwcr_order_section_title'
wp option delete 'wwcr_order_section_format'

