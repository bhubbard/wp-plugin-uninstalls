-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('our_api_field', 'our_first_field', 'our_second_field');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_don_amount', 'checkbox name', '_post_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_don_amount', 'checkbox name', '_post_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_don_amount', 'checkbox name', '_post_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_don_amount', 'checkbox name', '_post_sent');

