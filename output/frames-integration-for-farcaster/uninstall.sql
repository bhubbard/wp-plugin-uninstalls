-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('farcaster_wp', 'farcaster_wp_subscriptions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('farcaster_wp_suppress_notifications', 'farcaster_wp_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('farcaster_wp_suppress_notifications', 'farcaster_wp_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('farcaster_wp_suppress_notifications', 'farcaster_wp_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('farcaster_wp_suppress_notifications', 'farcaster_wp_tokens');

