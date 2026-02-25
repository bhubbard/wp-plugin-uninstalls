-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('citenote_allow_post_type', 'citenote_footer_title');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('citenote_list');
DELETE FROM wp_usermeta WHERE meta_key IN ('citenote_list');
DELETE FROM wp_termmeta WHERE meta_key IN ('citenote_list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('citenote_list');

