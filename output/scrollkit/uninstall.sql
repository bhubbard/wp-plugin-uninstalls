-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scroll_wp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_scroll_id', '_scroll_state', '_scroll_mobile_redirect', '_scroll_content', '_scroll_style', '_scroll_head', '_scroll_js', '_scroll_ad_js', '_scroll_fonts', '_scroll_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_scroll_id', '_scroll_state', '_scroll_mobile_redirect', '_scroll_content', '_scroll_style', '_scroll_head', '_scroll_js', '_scroll_ad_js', '_scroll_fonts', '_scroll_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_scroll_id', '_scroll_state', '_scroll_mobile_redirect', '_scroll_content', '_scroll_style', '_scroll_head', '_scroll_js', '_scroll_ad_js', '_scroll_fonts', '_scroll_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_scroll_id', '_scroll_state', '_scroll_mobile_redirect', '_scroll_content', '_scroll_style', '_scroll_head', '_scroll_js', '_scroll_ad_js', '_scroll_fonts', '_scroll_css');

