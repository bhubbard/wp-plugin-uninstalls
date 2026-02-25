-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DBS_PP_JP_Merchant', 'DBS_PP_JP_Password', 'DBSfuncy');

