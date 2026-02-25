-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sermons_nl_kerkomroep_mountpoint', 'sermons_nl_kerkomroep_min_delay', 'sermons_nl_kerkomroep_min_ahead', 'sermons_nl_kerktijden_id', 'sermons_nl_kerktijden_weeksahead', 'sermons_nl_kerktijden_weeksback', 'sermons_nl_youtube_channel', 'sermons_nl_youtube_key', 'sermons_nl_youtube_weeksback', 'sermons_nl_youtube_min_ahead', 'sermons_nl_icon_color_archive', 'sermons_nl_icon_color_planned', 'sermons_nl_icon_color_live', 'sermons_nl_last_update_time');
DELETE FROM wp_options WHERE option_name LIKE 'sermons_nl_icon_color_%';

