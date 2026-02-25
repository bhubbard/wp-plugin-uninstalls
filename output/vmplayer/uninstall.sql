-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nr_popoutbutton_bgcolor', 'nr_popoutbutton_window_width', 'nr_popoutbutton_window_height', 'nr_vmplayer_window_width', 'nr_vmplayer_window_height', 'nr_vmplayer_stream_url', 'nr_vmplayer_color', 'nr_vmplayer_product_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

