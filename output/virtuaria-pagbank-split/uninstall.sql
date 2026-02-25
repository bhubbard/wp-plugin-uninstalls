-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('virtuaria_pagbank_shipping_version', 'woocommerce_virt_pagseguro_settings', 'virtuaria_pagbank_split_db', 'virtuaria_new_receiver');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_virtuaria_receiver', '_receiver_id', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_virtuaria_receiver', '_receiver_id', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_virtuaria_receiver', '_receiver_id', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_virtuaria_receiver', '_receiver_id', 'rating');

