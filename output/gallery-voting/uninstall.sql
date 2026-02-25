-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gallery_voting_usersallowed', 'gallery_voting_max_all', 'gallery_voting_max_same', 'gallery_voting_tracking', 'gallery_voting_enable_unvoting', 'gallery_voting_css');

