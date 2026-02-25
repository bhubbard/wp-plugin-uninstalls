-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eofdsupport_username', 'eofdsupport_password', 'eofdsupport_url', 'eofdsupport_kktNumber', 'eofdsupport_multi_kkt', 'eofdsupport_taxationSystem', 'eofdsupport_VATrate', 'eofdsupport_VATrate_delivered', 'eofdsupport_TypeOfMeasurement', 'eofdsupport_buyerAddress', 'eofdsupport_payment_gateways', 'eofdsupport_cashierName', 'eofdsupport_cashierInn', 'eofdsupport_placeMarket', 'eofdsupport_2_receipt', 'eofdsupport_STATUS_income', 'eofdsupport_STATUS_income2', 'eofdsupport_STATUS_refund', 'eofdsupport_signSalesMethod', 'eofdsupport_indTradeItem', 'eofdsupport_db_version', 'eofdsupport_eofdsupport_signSalesMethod');

