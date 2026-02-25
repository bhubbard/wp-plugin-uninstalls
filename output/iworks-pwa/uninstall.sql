-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%last_used_tab';
DELETE FROM wp_options WHERE option_name LIKE '%cache_stamp';
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%flush_rules';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt', 'menu-icons');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt', 'menu-icons');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt', 'menu-icons');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt', 'menu-icons');

