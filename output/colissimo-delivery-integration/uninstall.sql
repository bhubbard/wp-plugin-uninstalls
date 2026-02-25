-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdi_tokentimerswitchnewcdi', 'cdi_o_transferoldsettings', 'wc_settings_tab_colissimo_cleanonsuppress', 'cdi_notice_display', 'cdi_options_version');

