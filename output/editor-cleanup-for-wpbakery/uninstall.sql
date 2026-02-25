-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fdp_wpbakery', 'fdp-wpbakery-notice-succ', 'fdp-wpbakery-notice-fail');

