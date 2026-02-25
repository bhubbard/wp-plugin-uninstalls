-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('special_content', 'wappaa-scripts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_script_footer', '_wp_page_template', '_inpost_head_script');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_script_footer', '_wp_page_template', '_inpost_head_script');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_script_footer', '_wp_page_template', '_inpost_head_script');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_script_footer', '_wp_page_template', '_inpost_head_script');

