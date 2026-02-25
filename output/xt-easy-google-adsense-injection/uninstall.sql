-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xt_go_advt_1_code', 'xt_go_advt_2_code', 'xt_go_advt_3_code', 'xt_go_advt_4_code', 'xt_go_advt_5_code');

