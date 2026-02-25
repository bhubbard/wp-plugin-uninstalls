-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gppl_add_post_like_button', 'gppl_beforecontent_like_button', 'gppl_aftercontent_like_button');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('voted_IP', 'votes_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('voted_IP', 'votes_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('voted_IP', 'votes_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('voted_IP', 'votes_count');

