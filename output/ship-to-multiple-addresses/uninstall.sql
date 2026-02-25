-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('destinations_price_section_on', 'destinations_individual_section', 'destinations_main_section_on', 'destinations_gift_section_on');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_regular_price', '_product_attributes', '_virtual', '_sold_individually', '_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_regular_price', '_product_attributes', '_virtual', '_sold_individually', '_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_regular_price', '_product_attributes', '_virtual', '_sold_individually', '_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_regular_price', '_product_attributes', '_virtual', '_sold_individually', '_visibility');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'name_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'phone_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'phone_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'phone_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'phone_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'email_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'email_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'email_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'email_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'address_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'address_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'address_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'address_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'custommessage_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'custommessage_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'custommessage_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'custommessage_%';

