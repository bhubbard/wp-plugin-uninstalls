#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scd_free_cancel'
wp option delete 'scd_currency_options'
wp option delete 'scd_role_options'
wp option delete 'scd_general_options'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_currency_pos'
wp option delete 'scd_first_install_date'
wp option delete 'scd_activation_notif_sent'
wp option delete 'scd_deactivation_notif_sent'
wp option delete 'widget_scd_widget'

# Delete Transients
wp transient delete 'scd_rates_OpenEx'
wp transient delete 'scd-admin-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scd_form_textpopup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scd_form_textpopup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scd_form_textpopup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scd_form_textpopup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scd_other_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scd_other_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scd_other_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scd_other_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scd-user-currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scd-user-currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scd-user-currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scd-user-currency'"
