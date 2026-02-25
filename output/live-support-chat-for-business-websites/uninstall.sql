-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ims_siteid', 'ims_imageid', 'ims_popup', 'ims_popuptime', 'ims_popupimage', 'ims_popupbutton', 'ims_popupheight', 'ims_popupwidth', 'ims_popuptop', 'ims_popupleft', 'ims_uploaded', 'ims_position', 'ims_username', 'ims_password', 'ims_leftcss', 'ims_topcss', 'ims_fixed');

