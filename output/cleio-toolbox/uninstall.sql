-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maps-provider', 'places-page-countries', 'exile-thumbnail-purge', 'social-instagram-access-token', 'social-instagram-account-username', 'social-instagram-account-picture', 'social-instagram-account-fullname', 'social-twitter-access-token', 'social-twitter-oauth-token', 'social-twitter-oauth-token-secret', 'cleio-user-exilethemes', 'gmap_key_api', 'cleio_do_activation_redirect', 'loop-content-filter', 'home-highlight', 'address-loop-display', 'rss-content-filter', 'loop-content-type', 'rss-content-type', 'social-fb-page', 'exile-widget-instagram', 'social-twitter', 'social-twitter-access-oauth-token', 'social-twitter-access-oauth-token-secret', 'exile-widget-instagram', 'exile-widget-twitter', 'gwebfontslist');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%-style';
DELETE FROM wp_options WHERE option_name LIKE '%-zoom';
DELETE FROM wp_options WHERE option_name LIKE '%-pins-color';
DELETE FROM wp_options WHERE option_name LIKE '%-pins';
DELETE FROM wp_options WHERE option_name LIKE '%-width';
DELETE FROM wp_options WHERE option_name LIKE '%-height';
DELETE FROM wp_options WHERE option_name LIKE '%-content-type';
DELETE FROM wp_options WHERE option_name LIKE '%-filter';
DELETE FROM wp_options WHERE option_name LIKE '%max-pins';
DELETE FROM wp_options WHERE option_name LIKE '%-filterdatevalue';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_countrycode', '_content_excluded_loop', '_content_excluded_rss', '_location');
DELETE FROM wp_usermeta WHERE meta_key IN ('_countrycode', '_content_excluded_loop', '_content_excluded_rss', '_location');
DELETE FROM wp_termmeta WHERE meta_key IN ('_countrycode', '_content_excluded_loop', '_content_excluded_rss', '_location');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_countrycode', '_content_excluded_loop', '_content_excluded_rss', '_location');

