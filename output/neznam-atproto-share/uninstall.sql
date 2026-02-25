-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-post-format';
DELETE FROM wp_options WHERE option_name LIKE '%-handle';
DELETE FROM wp_options WHERE option_name LIKE '%-default';
DELETE FROM wp_options WHERE option_name LIKE '%-did';
DELETE FROM wp_options WHERE option_name LIKE '%-url';
DELETE FROM wp_options WHERE option_name LIKE '%-secret';
DELETE FROM wp_options WHERE option_name LIKE '%-use-cron';
DELETE FROM wp_options WHERE option_name LIKE '%-tags';
DELETE FROM wp_options WHERE option_name LIKE '%-comment-override';
DELETE FROM wp_options WHERE option_name LIKE '%-comment-disable';
DELETE FROM wp_options WHERE option_name LIKE '%-debug-level';
DELETE FROM wp_options WHERE option_name LIKE '%-access-token';
DELETE FROM wp_options WHERE option_name LIKE '%-refresh-token';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-uri';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-uri';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-uri';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-uri';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-http-uri';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-http-uri';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-http-uri';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-http-uri';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-should-publish';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-should-publish';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-should-publish';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-should-publish';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-text-to-publish';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-text-to-publish';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-text-to-publish';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-text-to-publish';

