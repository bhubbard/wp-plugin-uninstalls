#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crmerpbs_notice'
wp option delete 'crmerpbs_enableOffers'
wp option delete 'crmerpbs_enableProducts'
wp option delete 'crmerpbs_enableAppointments'
wp option delete 'crmerpbs_enableEmails'
wp option delete 'crmerpbs_enableActions'
wp option delete 'crmerpbs_enableTickets'
wp option delete 'crmerpbs_userSegment'
wp option delete 'crmerpbs_userDiscount'
wp option delete 'crmerpbs_accessRole'
wp option delete 'crmerpbs_deleteSettings'
wp option delete 'crmerpbs_deleteTables'
wp option delete 'crmerpbs_currencySymbol'
wp option delete 'crmerpbs_paymentMethod'
wp option delete 'crmerpbs_onlySelectDocuments'
wp option delete 'crmerpbs_companyName'
wp option delete 'crmerpbs_companyImage'
wp option delete 'crmerpbs_companyVat'
wp option delete 'crmerpbs_companyPhone'
wp option delete 'crmerpbs_companyMobile'
wp option delete 'crmerpbs_companyAddress'
wp option delete 'crmerpbs_defaultVat'
wp option delete 'crmerpbs_enableStock'
wp option delete 'userToAdd'
wp option delete 'crmerpbs_headingsBackground'
wp option delete 'crmerpbs_headingsColor'
wp option delete 'crmerpbs_generalColor'
wp option delete 'crmerpbs_thankyouColor'
wp option delete 'crmerpbsdeleteSettings'
wp option delete 'crmerpbsaccessRole'
wp option delete 'crm_documents_table_db_version'
wp option delete 'crmerpbs_documents_table_db_version'
wp option delete 'crmerpbs_invoiceNotes'
wp option delete 'crmerpbs_invoiceThankyou'
wp option delete 'crmerpbs_invoiceStart'
wp option delete 'crmerpbs_invoiceTransPrefix'
wp option delete 'crmerpbs_activateReceipts'
wp option delete 'crmerpbscurrencySymbol'
wp option delete 'crmerpbs_transactions_table_db_version'
wp option delete 'crmerpbsdefaultVat'
wp option delete 'crmerpbs_fromName'
wp option delete 'crmerpbs_fromEmail'

# Delete Transients
wp transient delete 'crmerpbs_notification'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_notification' OR option_name LIKE '_site_transient_%_notification'"
wp transient delete 'crm-erp-business-solution'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crmerpbs_dateto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crmerpbs_dateto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crmerpbs_dateto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crmerpbs_dateto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crmerpbs_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crmerpbs_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crmerpbs_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crmerpbs_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crmerpbs_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crmerpbs_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crmerpbs_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crmerpbs_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crmerpbs_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crmerpbs_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crmerpbs_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crmerpbs_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crmerpbs_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crmerpbs_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crmerpbs_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crmerpbs_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crmerpbs_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crmerpbs_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crmerpbs_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crmerpbs_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_segment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_segment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_segment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_segment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount'"
