-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfatcb_price', 'wfatcb_img', 'wfatcb_txt_color', 'wfatcb_btn_text', 'wfatcb_bg_main', 'wfatcb_btnbg', 'wfatcb_attributes', 'wfatcb_btnbg_border', 'wfatcb_only_mobile');

