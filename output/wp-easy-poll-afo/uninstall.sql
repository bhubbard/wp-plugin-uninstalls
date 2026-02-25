-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('poll_result_after_it_ends', 'poll_share_enable_facebook', 'poll_share_enable_twitter', 'poll_share_enable_google', 'poll_share_enable_linkedin', 'poll_share_enable_email');

