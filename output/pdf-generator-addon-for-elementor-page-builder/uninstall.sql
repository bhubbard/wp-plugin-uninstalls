-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtw_pgaepb_header_setting_opt', 'rtw_pgaepb_footer_setting_opt', 'rtw_pgaepb_basic_setting_opt', 'rtw_pgaepb_css_setting_opt', 'rtw_pgaepb_watermark_setting_opt', 'rtw_pgaepb_custom_fonts', 'rtw_pgaepb_offer_time', 'rtwwpf_css_setting_opt', 'rtwwpf_watermark_setting_opt');

