-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_try_gutenberg_callout', 'dismiss_gutenberg_nag_options', 'dismiss_gutenberg_nag_transients');

