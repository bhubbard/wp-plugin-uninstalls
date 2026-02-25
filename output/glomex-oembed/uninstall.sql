-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-settings';
DELETE FROM wp_options WHERE option_name LIKE '%_promo_hide';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_page_template');

