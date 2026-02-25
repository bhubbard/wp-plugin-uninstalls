-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product_ratings', 'gr_setup', 'gr_DeliveryMethod', 'gr_PaymentMethod', 'gr_BusinessFunction', 'gr_UnitOfMeasurement', 'gr_billingIncrement', 'gr_availableAtOrFrom', 'gr_condition', 'gr_eligibleCustomerTypes', 'gr_language', 'gr_validity', 'currency_type', 'gr_PartsAndLabor-PickUp', 'gr_PartsAndLabor-BringIn', 'gr_Labor-BringIn');

