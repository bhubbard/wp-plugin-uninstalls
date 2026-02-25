-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookiefox');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('always_on', 'unblock_embeds', 'order', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('always_on', 'unblock_embeds', 'order', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('always_on', 'unblock_embeds', 'order', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('always_on', 'unblock_embeds', 'order', '_wp_page_template');

