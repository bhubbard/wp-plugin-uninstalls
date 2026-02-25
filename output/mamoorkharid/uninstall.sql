-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mb_CultureId_code', 'mb_LocationCultureId_code', 'mb_lid_code', 'mb_moaref', 'mb_vije', 'mb_top-text', 'mb_font-top-text', 'mb_color-top-text', 'mb_bot-text', 'mb_font-bot-text', 'mb_help_link', 'mb_help_link_color', 'mb_load_bootstrap', 'mb_other_site', 'mb_font-tab-text');

