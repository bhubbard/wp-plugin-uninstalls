-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jumuah1', 'jumuah2', 'jumuah3', 'fajrAdhanUrl', 'otherAdhanUrl', 'taraweehDim', 'khutbahDim', 'hijri-chbox', 'zawal', 'tomorrow_time', 'asrSelect', 'ds-scroll-text', 'ds-scroll-speed', 'ds-blink-text', 'template-chbox', 'dsTemplate', 'activateBeep', 'quran-chbox', 'activateAdhan', 'ds-logo', 'transitionEffect', 'transitionSpeed', 'slider-chbox', 'fontColor', 'nextPrayerSlide', 'zuhrAdhanBefore', 'asrAdhanBefore', 'ishaAdhanBefore', 'fajrAdhanBefore', 'deactivate_tomorrow', 'ds-fading-msg', 'hijri-ummul-qura', 'hijri-arabic-chbox', 'ramadan_chbox', 'hijri-adjust', 'dpt-init', 'debugActivated', 'ds-additional-css', 'slider1', 'slider1Url', 'slider2', 'slider2Url', 'slider3', 'slider3Url', 'slider4', 'slider4Url', 'slider5', 'slider5Url', 'slider6', 'slider6Url');
DELETE FROM wp_options WHERE option_name IN ('slider7', 'slider7Url', 'slider8', 'slider8Url', 'slider9', 'slider9Url', 'slider10', 'slider10Url', 'slider11', 'slider11Url', 'imsaq', 'prayersLocal', 'headersLocal', 'monthsLocal', 'numbersLocal', 'timesLocal', 'jamah_changes', 'fajr-angle', 'isha-angle', 'fajr-delay', 'zuhr-delay', 'asr-delay', 'maghrib-delay', 'isha-delay', 'higher-lat', 'calc-method', 'asr-method', 'hideTableBorder', 'tableBackground', 'tableHeading', 'tableHeadingFont', 'evenRow', 'highlight', 'highlightFont', 'notificationBackground', 'notificationFont', 'prayerName', 'prayerNameFont', 'digitalScreenRed', 'digitalScreenLightRed', 'digitalScreenGreen', 'digitalScreenPrayerName', 'dpt_dubug', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'maghrib-delah');
DELETE FROM wp_options WHERE option_name IN ('nearest_city', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'dpt_cities');
DELETE FROM wp_options WHERE option_name LIKE '%Url';
DELETE FROM wp_options WHERE option_name LIKE 'slider%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

