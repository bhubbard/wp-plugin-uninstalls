-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('banner_slidereffect', 'banner_transitiontime', 'banner_pausetime', 'banner_prevnextbtn');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url';

