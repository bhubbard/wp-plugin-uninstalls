-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mu_media_buttons');
DELETE FROM wp_options WHERE option_name LIKE '%options';
DELETE FROM wp_options WHERE option_name LIKE '%map-width';
DELETE FROM wp_options WHERE option_name LIKE '%map-height';
DELETE FROM wp_options WHERE option_name LIKE '%map-address';
DELETE FROM wp_options WHERE option_name LIKE '%map-latitude';
DELETE FROM wp_options WHERE option_name LIKE '%map-longitude';
DELETE FROM wp_options WHERE option_name LIKE '%map-zoom';
DELETE FROM wp_options WHERE option_name LIKE '%map-type';
DELETE FROM wp_options WHERE option_name LIKE '%map-type-control';
DELETE FROM wp_options WHERE option_name LIKE '%map-navigation-control';
DELETE FROM wp_options WHERE option_name LIKE '%map-info-window-width';
DELETE FROM wp_options WHERE option_name LIKE '%marker-clustering';
DELETE FROM wp_options WHERE option_name LIKE '%cluster-max-zoom';
DELETE FROM wp_options WHERE option_name LIKE '%cluster-grid-size';
DELETE FROM wp_options WHERE option_name LIKE '%cluster-style';
DELETE FROM wp_options WHERE option_name LIKE '%map-api-key';
DELETE FROM wp_options WHERE option_name LIKE '%geocoding-api-key';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%address';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%address';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%address';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%address';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%latitude';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%latitude';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%latitude';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%latitude';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%longitude';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%longitude';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%longitude';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%longitude';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%zIndex';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%zIndex';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%zIndex';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%zIndex';

