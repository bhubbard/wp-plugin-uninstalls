-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jm_awesome_icon', 'jm_awesome_position', 'jm_awesome_url', 'jm_awesome_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('jm_awesome_icon', 'jm_awesome_position', 'jm_awesome_url', 'jm_awesome_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('jm_awesome_icon', 'jm_awesome_position', 'jm_awesome_url', 'jm_awesome_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jm_awesome_icon', 'jm_awesome_position', 'jm_awesome_url', 'jm_awesome_content');

