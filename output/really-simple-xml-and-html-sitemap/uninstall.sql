-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rsxh-exclude-post-type', 'rsxh-exclude-pages', 'rsxh-exclude-pcpt-posts', 'rsxh-include-search-option');

