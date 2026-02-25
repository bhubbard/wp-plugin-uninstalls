-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swcart-oldposts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('swcart-word-count', 'swcart-reading-time', 'swcart-reading-time-raw');
DELETE FROM wp_usermeta WHERE meta_key IN ('swcart-word-count', 'swcart-reading-time', 'swcart-reading-time-raw');
DELETE FROM wp_termmeta WHERE meta_key IN ('swcart-word-count', 'swcart-reading-time', 'swcart-reading-time-raw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('swcart-word-count', 'swcart-reading-time', 'swcart-reading-time-raw');

