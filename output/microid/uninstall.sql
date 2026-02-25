-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('microid_include_posts', 'microid_include_comments', 'microid_identities');

