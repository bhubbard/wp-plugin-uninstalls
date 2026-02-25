-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rg_popup_enable', 'rg_popup_cookie', 'rg_popup_title', 'rg_popup_content', 'rg_popup_style', 'rg_popup_from', 'rg_popup_to', 'rg_popup_exclude');

