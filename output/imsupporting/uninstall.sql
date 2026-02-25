-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ims_siteid', 'ims_username', 'ims_password', 'ims_text', 'ims_dept', 'ims_url', 'ims_bgcolor', 'ims_bgofflinecolor', 'ims_textcolor', 'ims_controlcolor', 'ims_useshadow', 'ims_bodywidth', 'ims_bodyheight', 'ims_withoutminmax', 'ims_dynamicchatcolor', 'ims_usebtnshadow', 'ims_widgettype', 'ims_imageid', 'ims_leftcss', 'ims_topcss', 'ims_position', 'ims_uploaded', 'ims_fixed', 'ims_popup', 'ims_popuptime', 'ims_popupimage', 'ims_popupbutton', 'ims_popupheight', 'ims_popupwidth', 'ims_popuptop', 'ims_popupleft');

