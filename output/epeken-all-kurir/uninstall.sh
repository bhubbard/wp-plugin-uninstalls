#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bank_bca_accounts'
wp option delete 'woocommerce_bii_accounts'
wp option delete 'woocommerce_bank_bni_accounts'
wp option delete 'woocommerce_bni_syariah_accounts'
wp option delete 'woocommerce_bank_bri_accounts'
wp option delete 'woocommerce_bri_syariah_accounts'
wp option delete 'woocommerce_bank_syariah_mandiri_accounts'
wp option delete 'woocommerce_btpn_accounts'
wp option delete 'epeken_enabled_atlas_express'
wp option delete 'epeken_enabled_custom_tarif'
wp option delete 'epeken_enabled_dakota_tarif'
wp option delete 'epeken_enabled_jmx_cos'
wp option delete 'epeken_enabled_jmx_sms'
wp option delete 'epeken_enabled_jmx_lts'
wp option delete 'epeken_enabled_jmx_sos'
wp option delete 'epeken_enabled_jetez'
wp option delete 'epeken_setting_eta'
wp option delete 'epeken_diskon_tarif_jnt'
wp option delete 'epeken_enabled_jne_trucking_tarif'
wp option delete 'epeken_enabled_lion_jagopack'
wp option delete 'epeken_enabled_lion_regpack'
wp option delete 'epeken_diskon_tarif_lion'
wp option delete 'epeken_enabled_ninja_next_day'
wp option delete 'epeken_enabled_ninja_standard'
wp option delete 'epeken_diskon_tarif_ninja'
wp option delete 'epeken_enabled_nss_sds'
wp option delete 'epeken_enabled_nss_ods'
wp option delete 'epeken_enabled_nss_reg'
wp option delete 'epeken_enabled_pos_reguler'
wp option delete 'epeken_enabled_pos_sameday'
wp option delete 'epeken_enabled_pos_nextday'
wp option delete 'epeken_enabled_pos_biasa'
wp option delete 'epeken_enabled_pos_kargo_barang'
wp option delete 'epeken_enabled_pos_kilat_khusus'
wp option delete 'epeken_enabled_pos_express_nextday'
wp option delete 'epeken_enabled_pos_val_good'
wp option delete 'epeken_enabled_pos_kprt'
wp option delete 'epeken_enabled_pos_kpru'
wp option delete 'epeken_diskon_tarif_pos'
wp option delete 'epeken_enabled_rpx_sdp'
wp option delete 'epeken_enabled_rpx_mdp'
wp option delete 'epeken_enabled_rpx_ndp'
wp option delete 'epeken_enabled_rpx_rgp'
wp option delete 'epeken_enabled_sap_sds'
wp option delete 'epeken_enabled_sap_ods'
wp option delete 'epeken_enabled_sap_reg'
wp option delete 'epeken_enabled_sicepat_reg'
wp option delete 'epeken_enabled_sicepat_best'
wp option delete 'epeken_enabled_sicepat_siunt'
wp option delete 'epeken_enabled_sicepat_gokil'
wp option delete 'epeken_enabled_sicepat_sds'
wp option delete 'epeken_diskon_tarif_sicepat'
wp option delete 'epeken_enabled_wahana'
wp option delete 'epeken_is_asuransi_wahana'
wp option delete 'epeken_diskon_tarif_wahana'
wp option delete 'woocommerce_danamon_accounts'
wp option delete 'woocommerce_bank_mandiri_accounts'
wp option delete 'woocommerce_maybank_accounts'
wp option delete 'woocommerce_bank_muamalat_accounts'
wp option delete 'woocommerce_bank_niaga_accounts'
wp option delete 'woocommerce_bank_permata_accounts'
wp option delete 'woo_multi_currency_params'
wp option delete 'epeken_free_pc'
wp option delete 'epeken_free_pc_q'
wp option delete 'epeken_free_pc_1'
wp option delete 'epeken_enabled_jne'
wp option delete 'epeken_enabled_tiki'
wp option delete 'epeken_enabled_pos'
wp option delete 'epeken_enabled_esl'
wp option delete 'epeken_enabled_jne_reg'
wp option delete 'epeken_enabled_jne_oke'
wp option delete 'epeken_enabled_jne_yes'
wp option delete 'woocommerce_shipping_cost_requires_address'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'epeken_wcjne_license_key'
wp option delete 'epeken_multiple_rate_setting'
wp option delete 'epeken_enable_error_message_setting'
wp option delete 'epeken_intl_payment_paypal'
wp option delete 'epeken_jqmradio'
wp option delete 'epeken_email_korespondensi'
wp option delete 'epeken_email_optional'
wp option delete 'epeken_company_optional'
wp option delete 'epeken_buyer_complete_order'
wp option delete 'epeken_product_icon_in_checkout'
wp option delete 'epeken_mode_kode_pembayaran'
wp option delete 'epeken_freeship_n_city_for_free_shipping'
wp option delete 'epeken_freeship_n_province_for_free_shipping'
wp option delete 'epeken_enable_cod'
wp option delete 'epeken_cod_label'
wp option delete 'epeken_cod_payment'
wp option delete 'epeken_enable_cod_kurir'
wp option delete 'epeken_cod_include_ongkir'
wp option delete 'epeken_cod_kurir_perc'
wp option delete 'epeken_kode_kupon_subsidi_ongkir'
wp option delete 'epeken_nominal_subsidi_ongkir_dengan_kupon'
wp option delete 'epeken_province_for_free_shipping'
wp option delete 'epeken_is_provinsi_free'
wp option delete 'epeken_ongkir_per_vendor'
wp option delete 'epeken_nama_tarif_flat'
wp option delete 'epeken_nominal_tarif_flat'
wp option delete 'epeken_biaya_tambahan_name'
wp option delete 'epeken_biaya_tambahan_amount'
wp option delete 'epeken_perhitungan_biaya_tambahan'
wp option delete 'epeken_client_side_ref_data'
wp option delete 'epeken_data_server'
wp option delete 'epeken_data_asal_kota'
wp option delete 'epeken_packing_kayu_enabled'
wp option delete 'epeken_pengali_packing_kayu'
wp option delete 'epeken_pc_packing_kayu'
wp option delete 'epeken_min_fs'
wp option delete 'epeken_max_fs'
wp option delete 'epeken_enabled_rpx_insurance'
wp option delete 'epeken_enabled_tiki_hds'
wp option delete 'epeken_enabled_tiki_ons'
wp option delete 'epeken_enabled_tiki_reg'
wp option delete 'epeken_enabled_tiki_eco'
wp option delete 'epeken_enabled_pos_ems_priority_doc'
wp option delete 'epeken_enabled_pos_ems_priority_mar'
wp option delete 'epeken_enabled_pos_ems_doc'
wp option delete 'epeken_enabled_pos_ems_mar'
wp option delete 'epeken_enabled_pos_ems_epacket_lx'
wp option delete 'epeken_enabled_pos_rln'
wp option delete 'epeken_enabled_pos_ekspor'
wp option delete 'epeken_enabled_jne_international'
wp option delete 'epeken_enabled_flat'
wp option delete 'epeken_markup_tarif_jne'
wp option delete 'epeken_diskon_tarif_jne'
wp option delete 'epeken_markup_tarif_tiki'
wp option delete 'epeken_diskon_tarif_tiki'
wp option delete 'epeken_markup_tarif_pos'
wp option delete 'epeken_markup_tarif_wahana'
wp option delete 'epeken_markup_tarif_jnt'
wp option delete 'epeken_markup_tarif_sicepat'
wp option delete 'epeken_markup_tarif_lion'
wp option delete 'epeken_markup_tarif_ninja'
wp option delete 'epeken_markup_tarif_jtr'
wp option delete 'epeken_markup_tarif_intl'
wp option delete 'epeken_valid_intl_shipping_countries'
wp option delete 'epeken_country_filter'
wp option delete 'epeken_subsidi_ongkir'
wp option delete 'epeken_subsidi_min_purchase'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wmc_selected_currencies'
wp option delete 'epeken_cities_subsidi'
wp option delete 'epeken_cities_cod'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'epeken_kota_tarif_flat'
wp option delete 'woocommerce_epeken_courier_settings'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_email_from_address'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epeken_vendor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epeken_vendor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epeken_vendor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epeken_vendor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_dakota'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_dakota'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_dakota'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_dakota'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_jmx_cos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_jmx_cos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_jmx_cos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_jmx_cos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_jmx_sms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_jmx_sms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_jmx_sms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_jmx_sms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_jmx_lts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_jmx_lts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_jmx_lts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_jmx_lts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_jmx_sos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_jmx_sos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_jmx_sos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_jmx_sos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_jnt_ez'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_jnt_ez'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_jnt_ez'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_jnt_ez'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_jtr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_jtr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_jtr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_jtr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_lion_regpack'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_lion_regpack'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_lion_regpack'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_lion_regpack'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_lion_jagopack'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_lion_jagopack'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_lion_jagopack'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_lion_jagopack'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_ninja_next_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_ninja_next_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_ninja_next_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_ninja_next_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_ninja_standard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_ninja_standard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_ninja_standard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_ninja_standard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_pos_reguler'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_pos_reguler'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_pos_reguler'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_pos_reguler'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_pos_sameday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_pos_sameday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_pos_sameday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_pos_sameday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_pos_nextday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_pos_nextday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_pos_nextday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_pos_nextday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_pos_biasa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_pos_biasa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_pos_biasa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_pos_biasa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_pos_kilat_khusus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_pos_kilat_khusus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_pos_kilat_khusus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_pos_kilat_khusus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_pos_express_next_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_pos_express_next_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_pos_express_next_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_pos_express_next_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_pos_valuable_goods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_pos_valuable_goods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_pos_valuable_goods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_pos_valuable_goods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_pos_kprt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_pos_kprt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_pos_kprt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_pos_kprt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_pos_kpru'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_pos_kpru'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_pos_kpru'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_pos_kpru'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_rpx_sdp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_rpx_sdp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_rpx_sdp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_rpx_sdp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_rpx_mdp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_rpx_mdp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_rpx_mdp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_rpx_mdp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_rpx_ndp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_rpx_ndp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_rpx_ndp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_rpx_ndp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_rpx_rgp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_rpx_rgp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_rpx_rgp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_rpx_rgp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_sap_sds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_sap_sds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_sap_sds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_sap_sds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_sap_ods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_sap_ods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_sap_ods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_sap_ods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_sap_reg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_sap_reg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_sap_reg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_sap_reg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_sicepat_reg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_sicepat_reg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_sicepat_reg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_sicepat_reg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_sicepat_best'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_sicepat_best'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_sicepat_best'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_sicepat_best'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_sicepat_gokil'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_sicepat_gokil'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_sicepat_gokil'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_sicepat_gokil'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_sicepat_siunt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_sicepat_siunt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_sicepat_siunt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_sicepat_siunt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_sicepat_sds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_sicepat_sds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_sicepat_sds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_sicepat_sds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_wahana'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_wahana'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_wahana'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_wahana'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_data_kota_asal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_data_kota_asal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_data_kota_asal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_data_kota_asal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_origin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_origin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_origin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_origin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_wood_pack_mandatory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_wood_pack_mandatory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_wood_pack_mandatory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_wood_pack_mandatory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_flat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_flat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_flat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_flat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_flat_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_flat_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_flat_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_flat_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epeken_kurir_toko_coverage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epeken_kurir_toko_coverage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epeken_kurir_toko_coverage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epeken_kurir_toko_coverage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dimension'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dimension'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dimension'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dimension'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_jne_reg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_jne_reg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_jne_reg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_jne_reg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_jne_oke'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_jne_oke'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_jne_oke'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_jne_oke'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_jne_yes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_jne_yes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_jne_yes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_jne_yes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_tiki_reg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_tiki_reg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_tiki_reg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_tiki_reg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_tiki_eco'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_tiki_eco'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_tiki_eco'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_tiki_eco'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_tiki_ons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_tiki_ons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_tiki_ons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_tiki_ons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_inventory_origin_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_inventory_origin_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_inventory_origin_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_inventory_origin_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_free_ongkir'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_free_ongkir'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_free_ongkir'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_free_ongkir'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epeken_product_city_for_free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epeken_product_city_for_free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epeken_product_city_for_free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epeken_product_city_for_free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_insurance_mandatory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_insurance_mandatory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_insurance_mandatory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_insurance_mandatory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kelurahan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kelurahan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kelurahan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kelurahan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_kelurahan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_kelurahan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_kelurahan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_kelurahan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_kecamatan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_kecamatan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_kecamatan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_kecamatan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_kelurahan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_kelurahan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_kelurahan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_kelurahan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_kecamatan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_kecamatan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_kecamatan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_kecamatan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_confirmation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_confirmation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_confirmation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_confirmation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url_bukti_upload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url_bukti_upload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url_bukti_upload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url_bukti_upload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tanggal_pembayaran'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tanggal_pembayaran'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tanggal_pembayaran'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tanggal_pembayaran'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nama_pembayar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nama_pembayar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nama_pembayar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nama_pembayar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bank_pembayar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bank_pembayar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bank_pembayar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bank_pembayar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notes_konfirmasi'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notes_konfirmasi'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notes_konfirmasi'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notes_konfirmasi'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transfer_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transfer_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transfer_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transfer_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_dropshipper'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_dropshipper'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_dropshipper'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_dropshipper'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'owner'"
