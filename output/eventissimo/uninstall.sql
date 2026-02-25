-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_fbAppId', 'wp_fbprivateKey', 'wp_publicatefeedFB', 'wp_locationCityDefault', 'wp_locationAdressDefault', 'wp_locationPosition', 'wp_locationUrl', 'wp_locationZoom', 'wp_fbUser', 'wp_ownerEventFB', 'wp_publicatePageId', 'UseSingleTemplateDefault', 'wp_order_singleevent', 'wp_view_singleevent', 'wp_fbPages_publicKey');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('descrizione', 'statusEventFB', 'idEventFfb', 'urlEventFB', 'idAuthorFB', 'data_inizio', 'data_fine', 'ora_inizio', 'ora_fine', 'colorRandom', 'city', 'address', 'latlongMaps', 'EveryYear', 'dayRepeat', 'allDateRepeat', 'dayRepeatSelect', 'dayRepeatMount', 'untilRepeat', 'urlEventSite', '_eventissimo_image_gallery', 'urlFB', 'autoFb', 'urlLocationMaps');
DELETE FROM wp_usermeta WHERE meta_key IN ('descrizione', 'statusEventFB', 'idEventFfb', 'urlEventFB', 'idAuthorFB', 'data_inizio', 'data_fine', 'ora_inizio', 'ora_fine', 'colorRandom', 'city', 'address', 'latlongMaps', 'EveryYear', 'dayRepeat', 'allDateRepeat', 'dayRepeatSelect', 'dayRepeatMount', 'untilRepeat', 'urlEventSite', '_eventissimo_image_gallery', 'urlFB', 'autoFb', 'urlLocationMaps');
DELETE FROM wp_termmeta WHERE meta_key IN ('descrizione', 'statusEventFB', 'idEventFfb', 'urlEventFB', 'idAuthorFB', 'data_inizio', 'data_fine', 'ora_inizio', 'ora_fine', 'colorRandom', 'city', 'address', 'latlongMaps', 'EveryYear', 'dayRepeat', 'allDateRepeat', 'dayRepeatSelect', 'dayRepeatMount', 'untilRepeat', 'urlEventSite', '_eventissimo_image_gallery', 'urlFB', 'autoFb', 'urlLocationMaps');
DELETE FROM wp_commentmeta WHERE meta_key IN ('descrizione', 'statusEventFB', 'idEventFfb', 'urlEventFB', 'idAuthorFB', 'data_inizio', 'data_fine', 'ora_inizio', 'ora_fine', 'colorRandom', 'city', 'address', 'latlongMaps', 'EveryYear', 'dayRepeat', 'allDateRepeat', 'dayRepeatSelect', 'dayRepeatMount', 'untilRepeat', 'urlEventSite', '_eventissimo_image_gallery', 'urlFB', 'autoFb', 'urlLocationMaps');

