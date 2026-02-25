-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vave_dashData', 'vave_data', 'vave_weighting_data', 'vave_opportunities_data', 'vave_opp_choose_data', 'vave_result_data', 'vave_editble_switch');
DELETE FROM wp_usermeta WHERE meta_key IN ('vave_dashData', 'vave_data', 'vave_weighting_data', 'vave_opportunities_data', 'vave_opp_choose_data', 'vave_result_data', 'vave_editble_switch');
DELETE FROM wp_termmeta WHERE meta_key IN ('vave_dashData', 'vave_data', 'vave_weighting_data', 'vave_opportunities_data', 'vave_opp_choose_data', 'vave_result_data', 'vave_editble_switch');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vave_dashData', 'vave_data', 'vave_weighting_data', 'vave_opportunities_data', 'vave_opp_choose_data', 'vave_result_data', 'vave_editble_switch');

