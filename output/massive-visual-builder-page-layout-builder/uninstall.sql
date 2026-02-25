-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('templates-list');
DELETE FROM wp_options WHERE option_name LIKE '%-bui-template';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mvb_nag_ignore');
DELETE FROM wp_usermeta WHERE meta_key IN ('mvb_nag_ignore');
DELETE FROM wp_termmeta WHERE meta_key IN ('mvb_nag_ignore');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mvb_nag_ignore');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mvb_voted_IP_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mvb_voted_IP_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mvb_voted_IP_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mvb_voted_IP_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mvb_votes_count_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mvb_votes_count_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mvb_votes_count_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mvb_votes_count_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mvb_rating_VL_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mvb_rating_VL_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mvb_rating_VL_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mvb_rating_VL_%';

