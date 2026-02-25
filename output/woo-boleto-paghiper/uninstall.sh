#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paghiper_pix_settings'
wp option delete 'woocommerce_paghiper_billet_settings'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_paghiper_db_version'
wp option delete 'woocommerce_paghiper_settings'
wp option delete 'woocommerce_permalinks'

# Delete Transients
wp transient delete 'woo_paghiper_apikey_valid'
wp transient delete 'woo_paghiper_notice_2_1'
wp transient delete 'woo_paghiper_notice_install_date'
wp transient delete 'woo_paghiper_notice_review_done'
wp transient delete 'woo_paghiper_notice_review_ignore'

