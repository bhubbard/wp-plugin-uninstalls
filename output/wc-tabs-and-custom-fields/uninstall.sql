-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EWD_WCTCF_Custom_Fields', 'EWD_WCTCF_Use_Product', 'EWD_WCTCF_Custom_CSS', 'plugin_error', 'EWD_WCTCF_Full_Version', 'EWD_WCTCF_Install_Flag', 'EWD_WCTCF_Version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wctcf_tab_visbility', 'EWD_WCTCF_Tab_Order', 'EWD_WCTCF_Tab_Callback');
DELETE FROM wp_usermeta WHERE meta_key IN ('wctcf_tab_visbility', 'EWD_WCTCF_Tab_Order', 'EWD_WCTCF_Tab_Callback');
DELETE FROM wp_termmeta WHERE meta_key IN ('wctcf_tab_visbility', 'EWD_WCTCF_Tab_Order', 'EWD_WCTCF_Tab_Callback');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wctcf_tab_visbility', 'EWD_WCTCF_Tab_Order', 'EWD_WCTCF_Tab_Callback');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'EWD_WCTCF_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'EWD_WCTCF_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'EWD_WCTCF_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'EWD_WCTCF_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Toggle';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Toggle';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Toggle';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Toggle';

