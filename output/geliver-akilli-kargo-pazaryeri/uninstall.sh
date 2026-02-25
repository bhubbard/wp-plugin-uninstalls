#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geliver_akilli_kargo_plugin_mode'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_text_color'
wp option delete 'geliver_api_key'
wp option delete 'geliver_tek_asamada_gonderi_olusturma'
wp option delete 'geliver_otomatik_aktarilacaklar'
wp option delete 'shipping_company'
wp option delete 'geliver_akilli_kargo_desi_info'
wp option delete 'geliver_akilli_kargo_desi_type'
wp option delete 'geliver_manuel_musteri_mode'
wp option delete 'geliver_exchange_rate'
wp option delete 'woocommerce_weight_unit'
wp option delete 'geliver_akilli_kargo_shipping_company'
wp option delete 'kargo_siralama'
wp option delete 'geliver_sepette_ucretsiz_tutar'
wp option delete 'geliver_sepette_ucretsiz_ayar'
wp option delete 'geliver_akilli_komisyon_orani'
wp option delete 'geliver_akilli_kargo_komisyon_type'
wp option delete 'geliver_fiyat_yuvarlama'
wp option delete 'redirect_to_geliver_akilli_kargo_mode_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geliver_tracking_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geliver_tracking_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geliver_tracking_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geliver_tracking_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geliver_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geliver_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geliver_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geliver_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geliver_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geliver_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geliver_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geliver_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geliver_shipment_mail_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geliver_shipment_mail_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geliver_shipment_mail_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geliver_shipment_mail_sent'"
