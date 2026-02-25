-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mml_leadform_option_apikey', 'mml_leadform_option_hasapi', 'mml_leadform_option_formtitle', 'mml_leadform_option_privacy', 'mml_leadform_option_buttoncolor', 'mml_leadform_option_formbg', 'mml_leadform_option_formbgcolor', 'mml_leadform_option_selectlang', 'mml_leadform_option_googlekey', 'mml_leadform_option_selecttheme', 'mml_leadform_option_titlealignment', 'mml_leadform_option_buttontext', 'mml_leadform_option_thankyou', 'mml_leadform_option_trackform', 'mml_leadform_option_devadminbox', 'mml_detectiondb_version');

