-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpb_pcf_installed', 'wpb_pcf_lite_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('menu-item-cf7_popup_trigger', 'wpb_pcf_pro_discount_dismissed', 'wpb_pcf_form_popup_suggestion');
DELETE FROM wp_usermeta WHERE meta_key IN ('menu-item-cf7_popup_trigger', 'wpb_pcf_pro_discount_dismissed', 'wpb_pcf_form_popup_suggestion');
DELETE FROM wp_termmeta WHERE meta_key IN ('menu-item-cf7_popup_trigger', 'wpb_pcf_pro_discount_dismissed', 'wpb_pcf_form_popup_suggestion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('menu-item-cf7_popup_trigger', 'wpb_pcf_pro_discount_dismissed', 'wpb_pcf_form_popup_suggestion');

