-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sls_logo_table_version', 'sls_title_slider', 'sls_settings', 'sls_slides_to_show', 'sls_slides_to_scroll', 'sls_autoplay', 'sls_autoplay_speed', 'sls_arrows', 'sls_dots', 'sls_pause_on_hover');

