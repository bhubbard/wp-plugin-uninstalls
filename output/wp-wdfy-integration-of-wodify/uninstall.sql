-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wodify_program', 'wodify_location', 'wodify_timezone', 'wdfy_prg_inactive', 'wdfy_publishdatesetting', 'wdfy_publishoffset', 'wdfy_classes_cron', 'wdfy_wodpublish_cron', 'wdfy_wodpublish_days', 'wdfy_show_wodimages', 'wdfy_local_images', 'widget_sos_wodify_wod_widget', 'wdfy_coach_url', 'wdfy_prg_image', 'wdfy_schema_siteimage', 'wdfy_schema_pricerange', 'wdfy_schema_phone', 'wdfy_schema_addjson', 'wdfy_wpub_location', 'wdfy_wpub_program', 'wdfy_wpub_autocreate', 'wdfy_wpub_title', 'wdfy_wpub_publish', 'wdfy_wpub_incomp', 'wdfy_wpub_excomp', 'wdfy_wpub_category', 'wdfy_wpub_posttype', 'wdfy_wpub_author', 'wdfy_wpub_images', 'wdfy_wpub_thumb', 'wodify_apikey', 'wdfy_locations', 'wdfy_programs', 'wdfy_coaches', 'wodify_debugmode', 'wdfy_alexa_magicnumber', 'wdfy_api_program_short', 'wdfy_api_program', 'wdfy_apiactive', 'wdfy_prg_bgcolor', 'wdfy_prg_url', 'wdfy_prg_restshortname', 'wdfy_cachedlocation', 'wdfy_cachedprogram', 'wdfy_cachedcoach', 'wdfy_cache_date');
DELETE FROM wp_options WHERE option_name LIKE 'wdfy_image_attachid%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wdfy_date', '_wdfy_program', '_wdfy_location');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wdfy_date', '_wdfy_program', '_wdfy_location');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wdfy_date', '_wdfy_program', '_wdfy_location');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wdfy_date', '_wdfy_program', '_wdfy_location');

