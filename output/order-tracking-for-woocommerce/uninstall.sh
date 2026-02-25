#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sn_ot_carriers'
wp option delete 'sn_ot_shipping_detail_text'
wp option delete 'sn_ot_tracking_detail_text'
wp option delete 'sn_ot_tracking_form_caption'
wp option delete 'sn_ot_no_tracking_detail_found_text'
wp option delete 'sn_ot_show_order_detail'
wp option delete 'woocommerce_email_footer_text'

