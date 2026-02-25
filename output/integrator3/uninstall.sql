-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('integrator_url', 'integrator_apisecret', 'integrator_apiusername', 'integrator_apipassword', 'integrator_cnxnid');
DELETE FROM wp_options WHERE option_name LIKE 'integrator_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_a', 'page', 'vars');
DELETE FROM wp_usermeta WHERE meta_key IN ('_a', 'page', 'vars');
DELETE FROM wp_termmeta WHERE meta_key IN ('_a', 'page', 'vars');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_a', 'page', 'vars');

