-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bb-lang', 'bb-max-lastposts', 'bb-max-popularposts', 'bb-max-comments', 'bb-services');

