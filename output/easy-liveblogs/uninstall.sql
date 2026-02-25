-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elb_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_cache';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elb_status', '_elb_liveblog', '_elb_is_liveblog');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elb_status', '_elb_liveblog', '_elb_is_liveblog');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elb_status', '_elb_liveblog', '_elb_is_liveblog');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elb_status', '_elb_liveblog', '_elb_is_liveblog');

