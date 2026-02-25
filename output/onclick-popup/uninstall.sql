-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onclickpopup_setting1', 'onclickpopup_setting1_left', 'onclickpopup_setting1_top', 'onclickpopup_title', 'onclickpopup_setting2', 'onclickpopup_setting2_left', 'onclickpopup_setting2_top', 'onclickpopup_setting3', 'onclickpopup_setting3_left', 'onclickpopup_setting3_top', 'onclickpopup_setting4', 'onclickpopup_setting4_left', 'onclickpopup_setting4_top', 'onclickpopup_setting5', 'onclickpopup_setting5_left', 'onclickpopup_setting5_top', 'onclickpopup_Title');

