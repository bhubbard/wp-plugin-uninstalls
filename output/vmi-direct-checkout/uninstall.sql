-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dirctcheckoutvmi_buttontext', 'dirctcheckoutvmi_bgcolor', 'dirctcheckoutvmi_textcolor', 'dirctcheckoutvmi_cartHide', 'dirctcheckoutvmi_buybtn', 'my_plugin_do_activation_redirect');

