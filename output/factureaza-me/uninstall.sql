-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('factureazame_apiurl', 'factureazame_apikey', 'factureazame_estimates', 'factureazame_company', 'factureazame_series', 'factureazame_number', 'factureazame_duedays', 'factureazame_cashing', 'factureazame_receipt_series', 'factureazame_op_series', 'factureazame_est-series', 'factureazame_est-number', 'factureazame_sent');

