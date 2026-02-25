-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('last_lar_link_id');
DELETE FROM wp_options WHERE option_name LIKE '%old_data_imported';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lar_disabled', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('lar_disabled', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('lar_disabled', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lar_disabled', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%keywords';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%keywords';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%keywords';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%keywords';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%stats';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%stats';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%stats';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%stats';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%do_follow';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%do_follow';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%do_follow';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%do_follow';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%open_in';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%open_in';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%open_in';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%open_in';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%shrink';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%shrink';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%shrink';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%shrink';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%link_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%link_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%link_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%link_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%is_sensitive';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%is_sensitive';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%is_sensitive';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%is_sensitive';

