-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spam-destroyer-stats', 'spam-destroyer-version', 'spam-destroyer-gd-notice-removed', 'spam-destroyer-key');
DELETE FROM wp_options WHERE option_name LIKE '%-activation-date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('issues');
DELETE FROM wp_usermeta WHERE meta_key IN ('issues');
DELETE FROM wp_termmeta WHERE meta_key IN ('issues');
DELETE FROM wp_commentmeta WHERE meta_key IN ('issues');

