-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exclude_pin_it_images', 'excluded_pint_it_pages', 'WL_Enable_Pinit_Post', 'WL_Enable_Pinit_Page', 'WL_Pinit_Btn_On_Hover', 'WL_Mobile_Status', 'WL_Pinit_Btn_Color', 'WL_Pinit_Btn_Design', 'WL_Pinit_Btn_Size');

