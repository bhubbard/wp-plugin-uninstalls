-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avifautoconvstatus', 'avifoperationmode', 'avifimagequality', 'avifcompressionspeed', 'avifconversionengine', 'avifontheflyavif', 'avifenablelogging', 'avifapikey', 'aviffallbackmode', 'aviflazyload', 'aviflazyloadrootmargin', 'aviflazyloadjsthreshold', 'aviflazyloadbackground', 'avifbackgroundConv', 'avifbackgroundevents');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('avifexpressconverted');
DELETE FROM wp_usermeta WHERE meta_key IN ('avifexpressconverted');
DELETE FROM wp_termmeta WHERE meta_key IN ('avifexpressconverted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('avifexpressconverted');

