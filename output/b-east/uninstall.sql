-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beast_close_orders', 'beast_autosync', 'beast_requestlabel', 'beast_referencetemplate', 'beast_apikey');
DELETE FROM wp_options WHERE option_name LIKE 'beast_account_info-%';

