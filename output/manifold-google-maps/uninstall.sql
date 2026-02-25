-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('manifold_google_maps_googlekey');
DELETE FROM wp_options WHERE option_name LIKE '%_googlekey';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('manifold-google-maps-address', 'manifold-google-maps-lat', 'manifold-google-maps-long', 'manifold-google-maps-phone', 'manifold-google-maps-weblink', 'manifold-google-maps-email', 'manifold-google-maps-description');
DELETE FROM wp_usermeta WHERE meta_key IN ('manifold-google-maps-address', 'manifold-google-maps-lat', 'manifold-google-maps-long', 'manifold-google-maps-phone', 'manifold-google-maps-weblink', 'manifold-google-maps-email', 'manifold-google-maps-description');
DELETE FROM wp_termmeta WHERE meta_key IN ('manifold-google-maps-address', 'manifold-google-maps-lat', 'manifold-google-maps-long', 'manifold-google-maps-phone', 'manifold-google-maps-weblink', 'manifold-google-maps-email', 'manifold-google-maps-description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('manifold-google-maps-address', 'manifold-google-maps-lat', 'manifold-google-maps-long', 'manifold-google-maps-phone', 'manifold-google-maps-weblink', 'manifold-google-maps-email', 'manifold-google-maps-description');

