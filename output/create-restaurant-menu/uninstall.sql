-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storename', 'menutitlefontsize', 'menuotherfontsize', 'otherbuttonbgcolor', 'currencysymb', 'jquery', 'allergens', 'allergensfontsize', 'allergensfontcolor', 'bootstrap_minjs', 'fontawesome_mincss', 'bootstrap_mincss');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

