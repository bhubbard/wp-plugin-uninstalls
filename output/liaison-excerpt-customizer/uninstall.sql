-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('excerpt_stuff_active', 'excerpt_stuff_excerpt_text', 'excerpt_stuff_excerpt_padding');

