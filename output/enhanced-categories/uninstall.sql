-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enh_cats_version', 'enh_cats_show_symbol', 'enh_cats_hide_symbol', 'enh_cats_no_child_symbol', 'enh_cats_effect', 'enh_cats_show_count', 'enh_cats_show_rss', 'enh_cats_hide_empty', 'enh_cats_button_before_link');

