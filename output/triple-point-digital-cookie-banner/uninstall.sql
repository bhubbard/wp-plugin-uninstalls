-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpd_cb_banner_title', 'tpd_cb_banner_content', 'tpd_cb_accept_text', 'tpd_cb_accept_class', 'tpd_cb_essential_text', 'tpd_cb_essential_class', 'tpd_cb_bg_color', 'tpd_cb_accent_color', 'tpd_cb_text_color', 'tpd_cb_ga_enabled', 'tpd_cb_ga_id');

