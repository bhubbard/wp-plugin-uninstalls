-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('InstagramClientID', 'InstagramClientSecret', 'InstagramAccessToken', 'InstagramUserId', 'InstagramAccessTokenLong');

