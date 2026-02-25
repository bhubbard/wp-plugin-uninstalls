-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('keepspace_title', 'keepspace_excerpt', 'keepspace_content', 'keepspace_comment', 'keepspace_space_type');

