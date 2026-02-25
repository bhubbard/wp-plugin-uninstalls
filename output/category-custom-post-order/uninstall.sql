-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posts_order', 'posts_order_upgrade');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('term_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('term_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('term_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('term_order');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_sort_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_sort_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_sort_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sort_%';

