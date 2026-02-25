-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'clktusg_slider_settings_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'clktusg_slider_settings_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'clktusg_slider_settings_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'clktusg_slider_settings_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'clktusg_slider_slides_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'clktusg_slider_slides_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'clktusg_slider_slides_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'clktusg_slider_slides_%';

