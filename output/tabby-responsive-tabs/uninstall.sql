-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc_tabby_default_styles', 'cc_tabby_tab_title_element', 'cc_tabby_fa_icon_style');

