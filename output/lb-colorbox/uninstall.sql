-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lbcb_options');
DELETE FROM wp_options WHERE option_name LIKE '%_kulers';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lbcb_type', '_lbcb_author', '_lbcb_link', '_lbcb_color1', '_lbcb_color2', '_lbcb_color3', '_lbcb_color4', '_lbcb_color5', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lbcb_type', '_lbcb_author', '_lbcb_link', '_lbcb_color1', '_lbcb_color2', '_lbcb_color3', '_lbcb_color4', '_lbcb_color5', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lbcb_type', '_lbcb_author', '_lbcb_link', '_lbcb_color1', '_lbcb_color2', '_lbcb_color3', '_lbcb_color4', '_lbcb_color5', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lbcb_type', '_lbcb_author', '_lbcb_link', '_lbcb_color1', '_lbcb_color2', '_lbcb_color3', '_lbcb_color4', '_lbcb_color5', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

