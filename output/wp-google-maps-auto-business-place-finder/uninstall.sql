-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wgabf_view_on_cat', 'wgabf_view_on_tag', 'wgabf_autocomplete_search', 'wgabf_place_type', 'wgabf_lat', 'wgabf_default_title', 'wgabf_lng', 'wgabf_location', 'wgabf_start_html_tag', 'wgabf_end_html_tag', 'wgabf_title', 'wgabf_exclude_from_title');

