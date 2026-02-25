-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fhw_dsgvo_cookie_position', 'fhw_dsgvo_cookie_abstand', 'fhw_dsgvo_cookie_bgcolor', 'fhw_dsgvo_cookie_textcolor', 'fhw_dsgvo_cookie_text', 'fhw_dsgvo_cookie_buttonbgcolor', 'fhw_dsgvo_cookie_buttontextcolor', 'fhw_dsgvo_cookie_buttontext', 'fhw_dsgvo_cookie_datenschutzerklaerung', 'fhw_dsgvo_cookie_datenschutzseite', 'fhw_dsgvo_cookie_datenschutztext', 'fhw_dsgvo_cookie_datenschutzdesign', 'fhw_dsgvo_cookie_datenschutztextfarbe', 'fhw_dsgvo_cookie_ppbuttonbg');
DELETE FROM wp_options WHERE option_name LIKE 'fhw_dsgvo_cookie_pp_%';

