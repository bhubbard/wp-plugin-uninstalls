-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickwhatsapps_floation_posi_rechts_nach_links', 'quickwhatsapps_floating_posi_unten_nach_oben', 'quickwhatsapp', 'quickwhatsappbutton', 'quickwhatsapps_greetings', 'quickwhatsappsharebutton', 'quickwhatsappbutton_style', 'quickwhatsappsharing', 'quickwhatsapps_afteraddtocartbutton', 'quickwhatsapps_onlineoffline_status', 'quickwhatsapps_floatingbutton_status', 'quickwhatsapps_chatbutton_status', 'quickwhatsapps_groupelink', 'quickwhatsapps_groupelink2', 'quickwhatsapps_groupelink3', 'quickwhatsapps_groupelink_imgurl', 'quickwhatsapps_groupelink_imgurl2', 'quickwhatsapps_groupelink_imgurl3', 'option_name');

