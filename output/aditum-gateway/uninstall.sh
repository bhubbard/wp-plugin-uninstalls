#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aditum_antifraude_id'
wp option delete 'aditum_antifraude_type'
wp option delete 'woocommerce_pay_page_id'
wp option delete 'woocommerce_thanks_page_id'

