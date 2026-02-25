-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'oauth_gap_messenger_id', 'oauth_gap_messenger_details');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'oauth_gap_messenger_id', 'oauth_gap_messenger_details');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'oauth_gap_messenger_id', 'oauth_gap_messenger_details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'oauth_gap_messenger_id', 'oauth_gap_messenger_details');

