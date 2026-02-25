-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_gutenberg_options', 'disable-gutenberg-dismiss-notice');

