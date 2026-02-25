-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storelocator_url', 'storelocator_path', 'storelocator_url_input', 'storelocator_path_input');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('storelocator_getting_started_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('storelocator_getting_started_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('storelocator_getting_started_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('storelocator_getting_started_notice');

