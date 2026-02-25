-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('OPTIONS', 'use_style_where', 'use_style_where2', 'gwi_sub', 'gwi_font', 'gwi_sl1', 'gwi_prvw', 'gwi_my_font', 'gwi_own', 'gwi_own_font');

