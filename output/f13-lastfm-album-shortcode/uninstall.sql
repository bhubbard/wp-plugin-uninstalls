-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lfmastoken', 'lfmascache_timeout');
DELETE FROM wp_options WHERE option_name LIKE 'f13lfmas%';

