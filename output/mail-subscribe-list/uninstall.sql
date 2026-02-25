-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sml_subscribe_widget_title', 'sml_subscribe_widget_prepend', 'sml_subscribe_widget_jsthanks', 'sml_subscribe_widget_thankyou', 'sml_subscribe_widget_showname', 'sml_subscribe_widget_nametxt', 'sml_subscribe_widget_nameholder', 'sml_subscribe_widget_emailtxt', 'sml_subscribe_widget_emailholder', 'sml_subscribe_widget_showsubmit', 'sml_subscribe_widget_submittxt');

