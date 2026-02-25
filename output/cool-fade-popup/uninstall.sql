-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PopUpFad_Group', 'PopUpFad_Random', 'PopUpFad_Title', 'PopUpFad_On_Homepage', 'PopUpFad_On_Posts', 'PopUpFad_On_Pages', 'PopUpFad_On_Archives', 'PopUpFad_On_Search', 'PopUpFad_Session', 'PopUpFad_nopopup');

