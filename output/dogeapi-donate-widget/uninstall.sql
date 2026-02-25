-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dogeAPI_on_page', 'dogeAPI_on_post', 'animation_type', 'dogeAPI_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('payment_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('payment_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('payment_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('payment_address');

