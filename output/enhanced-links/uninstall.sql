-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enh_links_version', 'enh_links_show_symbol', 'enh_links_hide_symbol', 'enh_links_is_symbol_before', 'enh_links_show_link_description', 'enh_links_effect');

