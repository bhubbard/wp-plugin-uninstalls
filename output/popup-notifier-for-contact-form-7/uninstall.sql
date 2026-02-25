-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popupnotifiercf7_option_isAutoClose', 'popupnotifiercf7_option_isConfirmButton', 'popupnotifiercf7_option_isShowIcon', 'popupnotifiercf7_option_customSeconds', 'popupnotifiercf7_option_customTextButton', 'popupnotifiercf7_option_customTextButtonBackground');

