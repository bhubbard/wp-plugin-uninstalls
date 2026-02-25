-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ntrpp-open-comment-links-in-new-window', 'ntrpp-othar-comment-links-in-new-window', 'ntrpp-website-full-url');

