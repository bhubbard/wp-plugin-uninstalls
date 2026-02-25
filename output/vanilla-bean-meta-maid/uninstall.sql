-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vbean_meta_maid_htmlhead', 'vbean_meta_maid_htmlbeforeclosebody', 'vbean_meta_maid_mobilehtmlhead', 'vbean_meta_maid_mobilehtmlbeforeclosebody', 'vbean_meta_maid_desktophtmlhead', 'vbean_meta_maid_desktophtmlbeforeclosebody');

