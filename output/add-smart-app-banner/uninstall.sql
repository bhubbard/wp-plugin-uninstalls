-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sab_appleid', 'sab_playid', 'sab_msid', 'sab_msname', 'sab_dayshidden', 'sab_daysreminder', 'sab_title', 'sab_author', 'sab_button', 'sab_iosprice', 'sab_playprice', 'sab_msprice', 'sab_image', 'sab_daysreminder  ');

