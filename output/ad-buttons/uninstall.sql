-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_adbuttons_cfg', 'ad_buttons_version', 'ad_buttons_db_version');

