-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stl_timeline_band_colors', 'stl_timeline_band_options', 'stl_timeline_orientation', 'stl_timeline_startdate', 'stl_timeline_usestartstop', 'stl_timeline_start', 'stl_timeline_stop', 'stl_timeline_plugin_version', 'stl_timeline_useattachments', 'stl_timeline_linkhandling', 'stl_timeline_showbubbledate', 'stl_timeline_showfutureposts', 'stl_timelinepageids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('stl-icon', 'stl-image', 'stl-link', 'stl-tapeImage', 'stl-caption', 'stl-classname');
DELETE FROM wp_usermeta WHERE meta_key IN ('stl-icon', 'stl-image', 'stl-link', 'stl-tapeImage', 'stl-caption', 'stl-classname');
DELETE FROM wp_termmeta WHERE meta_key IN ('stl-icon', 'stl-image', 'stl-link', 'stl-tapeImage', 'stl-caption', 'stl-classname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('stl-icon', 'stl-image', 'stl-link', 'stl-tapeImage', 'stl-caption', 'stl-classname');

