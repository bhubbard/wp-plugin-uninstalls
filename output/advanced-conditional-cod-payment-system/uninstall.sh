#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accodps_wc_advance_payment_percentage'
wp option delete 'accodps_wc_advance_payment_min_order_total'
wp option delete 'accodps_advance_payment_title'
wp option delete 'accodps_advance_payment_description'
wp option delete 'accodps_advance_payment_checkbox_text'

