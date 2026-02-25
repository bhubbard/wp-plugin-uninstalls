-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comment_expirator');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('comment_expirator_date', 'comment_expirator_time', 'comment_expirator_disable_pt');
DELETE FROM wp_usermeta WHERE meta_key IN ('comment_expirator_date', 'comment_expirator_time', 'comment_expirator_disable_pt');
DELETE FROM wp_termmeta WHERE meta_key IN ('comment_expirator_date', 'comment_expirator_time', 'comment_expirator_disable_pt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('comment_expirator_date', 'comment_expirator_time', 'comment_expirator_disable_pt');

