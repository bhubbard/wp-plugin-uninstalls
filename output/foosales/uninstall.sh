#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'globalFooSalesSalt'
wp option delete 'globalFooSalesWooCommerceAnalytics'
wp option delete 'foosales_db_square_devices'
wp option delete 'foosales_db_square_checkouts'
wp option delete 'foosales_db_square_refunds'
wp option delete 'globalFooSalesCustomerUserRole'
wp option delete 'globalFooSalesDefaultCustomer'
wp option delete 'globalFooSalesProductsToDisplay'
wp option delete 'globalFooSalesProductCategories'
wp option delete 'globalFooSalesProductsStatus'
wp option delete 'globalFooSalesProductsOnlyInStock'
wp option delete 'globalFooSalesCheckStockAvailability'
wp option delete 'globalFooSalesProductsPerPage'
wp option delete 'globalFooSalesProductsShowAttributeLabels'
wp option delete 'globalFooSalesProductsLoadImages'
wp option delete 'globalFooSalesProductsUseDecimalQuantities'
wp option delete 'globalFooSalesOnlyLoadPOSOrders'
wp option delete 'globalFooSalesOrderLoadStatuses'
wp option delete 'globalFooSalesOrdersToLoad'
wp option delete 'globalFooSalesFetchOrderNotes'
wp option delete 'globalFooSalesOrderSubmitStatuses'
wp option delete 'globalFooSalesDefaultOrderStatus'
wp option delete 'globalFooSalesOrderIncompleteStatuses'
wp option delete 'globalFooSalesDisableNewOrderEmails'
wp option delete 'globalFooSalesNewOrderAlertStatuses'
wp option delete 'globalFooSalesNewOrderAlertShippingMethods'
wp option delete 'globalFooSalesStoreLogoURL'
wp option delete 'globalFooSalesStoreName'
wp option delete 'globalFooSalesHeaderContent'
wp option delete 'globalFooSalesReceiptTitle'
wp option delete 'globalFooSalesOrderNumberPrefix'
wp option delete 'globalFooSalesProductColumnTitle'
wp option delete 'globalFooSalesQuantityColumnTitle'
wp option delete 'globalFooSalesPriceColumnTitle'
wp option delete 'globalFooSalesSubtotalColumnTitle'
wp option delete 'globalFooSalesShowSKU'
wp option delete 'globalFooSalesShowGUID'
wp option delete 'globalFooSalesInclusiveAbbreviation'
wp option delete 'globalFooSalesExclusiveAbbreviation'
wp option delete 'globalFooSalesDiscountsTitle'
wp option delete 'globalFooSalesRefundsTitle'
wp option delete 'globalFooSalesTaxTitle'
wp option delete 'globalFooSalesTotalTitle'
wp option delete 'globalFooSalesPaymentMethodTitle'
wp option delete 'globalFooSalesShowBillingAddress'
wp option delete 'globalFooSalesBillingAddressTitle'
wp option delete 'globalFooSalesShowShippingAddress'
wp option delete 'globalFooSalesShippingAddressTitle'
wp option delete 'globalFooSalesFooterContent'
wp option delete 'globalFooSalesReceiptShowLogo'
wp option delete 'globalFooSalesSquareApplicationID'
wp option delete 'globalFooSalesSquareAccessToken'
wp option delete 'globalFooSalesStripePublishableKey'
wp option delete 'globalFooSalesStripeSecretKey'
wp option delete 'globalFooSalesAnalyticsOptIn'
wp option delete 'foosales_cashier_role_version'
wp option delete 'fsfwc_pos_page'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'globalWooCommerceEventsEnableQRCode'
wp option delete 'enable_xmlrpc'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_onboarding_profile'
wp option delete 'globalWooCommerceEventsAppHidePersonalInfo'
wp option delete 'globalFooSalesOfflineChanges'
wp option delete 'fsfwc_flush_rewrite_rules_flag'
wp option delete 'foosales_products_default_minimum_cart_quantity'
wp option delete 'foosales_products_default_cart_quantity_step'
wp option delete 'foosales_products_default_cart_quantity_unit'
wp option delete 'fsfwc_do_activation_redirect'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'fsfwc_update_order_square_fees'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_foosales_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_foosales_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_foosales_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_foosales_review_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_extra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foosales_square_order_auto_refund'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foosales_square_order_auto_refund'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foosales_square_order_auto_refund'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foosales_square_order_auto_refund'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foosales_square_fee_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foosales_square_fee_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foosales_square_fee_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foosales_square_fee_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foosales_variation_show_in_pos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foosales_variation_show_in_pos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foosales_variation_show_in_pos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foosales_variation_show_in_pos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cashier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cashier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cashier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cashier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_number_of_payments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_number_of_payments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_number_of_payments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_number_of_payments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_refunded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_refunded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_refunded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_refunded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsProductID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsProductID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsProductID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsProductID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsTicketID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsTicketID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsTicketID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsTicketID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cashier_display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cashier_display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cashier_display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cashier_display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsAttendeeOverride'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsAttendeeOverride'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsAttendeeOverride'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsAttendeeOverride'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsAttendeeOverridePlural'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsAttendeeOverridePlural'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsAttendeeOverridePlural'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsAttendeeOverridePlural'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsBookingsSlotOverride'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsBookingsSlotOverride'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsBookingsSlotOverride'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsBookingsSlotOverride'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsBookingsDateOverride'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsBookingsDateOverride'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsBookingsDateOverride'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsBookingsDateOverride'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsSeatingRowOverride'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsSeatingRowOverride'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsSeatingRowOverride'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsSeatingRowOverride'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsSeatingSeatOverride'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsSeatingSeatOverride'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsSeatingSeatOverride'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsSeatingSeatOverride'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsEvent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsEvent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsEvent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsEvent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foosales_user_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foosales_user_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foosales_user_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foosales_user_source'"
