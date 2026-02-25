#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ncmwcp1802_upsell_settings_type'
wp option delete 'ncmwcp1802_upsell_settings_only_product_page'
wp option delete 'ncmwcp1802_upsell_settings_title'
wp option delete 'ncmwcp1802_upsell_settings_subtitle'
wp option delete 'ncmwcp1802_upsell_settings_hide_out_of_stock'
wp option delete 'ncmwcp1802_upsell_settings_show_label_for_backorders'

