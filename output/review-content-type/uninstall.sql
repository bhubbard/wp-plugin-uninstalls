-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rct_permalink_settings', 'rct_version', 'rct_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rct_name', '_rct_pros', '_rct_cons', '_rct_summary', '_rct_min_price', '_rct_max_price', '_rct_pros_heading', '_rct_cons_heading', '_rct_summary_heading', '_rct_featured_image_link', '_rct_link_url', '_rct_link_text', '_rct_link_style', '_rct_rating_type', '_rct_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rct_name', '_rct_pros', '_rct_cons', '_rct_summary', '_rct_min_price', '_rct_max_price', '_rct_pros_heading', '_rct_cons_heading', '_rct_summary_heading', '_rct_featured_image_link', '_rct_link_url', '_rct_link_text', '_rct_link_style', '_rct_rating_type', '_rct_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rct_name', '_rct_pros', '_rct_cons', '_rct_summary', '_rct_min_price', '_rct_max_price', '_rct_pros_heading', '_rct_cons_heading', '_rct_summary_heading', '_rct_featured_image_link', '_rct_link_url', '_rct_link_text', '_rct_link_style', '_rct_rating_type', '_rct_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rct_name', '_rct_pros', '_rct_cons', '_rct_summary', '_rct_min_price', '_rct_max_price', '_rct_pros_heading', '_rct_cons_heading', '_rct_summary_heading', '_rct_featured_image_link', '_rct_link_url', '_rct_link_text', '_rct_link_style', '_rct_rating_type', '_rct_rating');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_rct_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_rct_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_rct_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rct_%';

