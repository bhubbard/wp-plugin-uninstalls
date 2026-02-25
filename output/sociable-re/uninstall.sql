-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sociable_awesmapikey', 'sociable_active_sites', 'sociable_imagedir', 'sociable_tagline', 'sociable_awesmenable', 'sociable_useiframe', 'sociable_iframewidth', 'sociable_iframeheight', 'sociable_usetargetblank', 'sociable_usetextlinks', 'sociable_disablesprite', 'sociable_disablealpha', 'sociable_conditionals', 'sociable_usecss');
DELETE FROM wp_options WHERE option_name LIKE 'sociable_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sociableoff');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sociableoff');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sociableoff');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sociableoff');

