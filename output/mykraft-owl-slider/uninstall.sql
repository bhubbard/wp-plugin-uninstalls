-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mykraft_slidetarget', 'mykraft_slideurl');
DELETE FROM wp_usermeta WHERE meta_key IN ('mykraft_slidetarget', 'mykraft_slideurl');
DELETE FROM wp_termmeta WHERE meta_key IN ('mykraft_slidetarget', 'mykraft_slideurl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mykraft_slidetarget', 'mykraft_slideurl');

