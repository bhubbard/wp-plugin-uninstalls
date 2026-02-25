-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cr_aui_reloaded_multiple_ads', 'cr_aui_reloaded_howmany_ads', 'cr_aui_reloaded_placement_option', 'cr_aui_reloaded_css_text');

