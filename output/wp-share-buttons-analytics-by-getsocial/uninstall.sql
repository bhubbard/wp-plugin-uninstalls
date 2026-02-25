-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs-popup-showed', 'gs-api-key', 'gs-place', 'gs-posts-page', 'gs-place-follow', 'gs-pro', 'gs-user-email', 'gs-identifier', 'gs-apps', 'gs-ask-review', 'gs-has-subscriptions', 'gs-alert-msg', 'gs-alert-utm', 'gs-alert-cta', 'gs-lang', 'gs-custom-expression-active', 'gs-custom-expression-position');
DELETE FROM wp_options WHERE option_name LIKE '%-active';
DELETE FROM wp_options WHERE option_name LIKE '%-network-fb';
DELETE FROM wp_options WHERE option_name LIKE '%-network-tw';
DELETE FROM wp_options WHERE option_name LIKE '%-network-pn';
DELETE FROM wp_options WHERE option_name LIKE '%-network-gp';
DELETE FROM wp_options WHERE option_name LIKE '%-template';
DELETE FROM wp_options WHERE option_name LIKE '%-size';
DELETE FROM wp_options WHERE option_name LIKE '%-counter';
DELETE FROM wp_options WHERE option_name LIKE '%-position';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_my_meta_getsocialio_hide');
DELETE FROM wp_usermeta WHERE meta_key IN ('_my_meta_getsocialio_hide');
DELETE FROM wp_termmeta WHERE meta_key IN ('_my_meta_getsocialio_hide');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_my_meta_getsocialio_hide');

