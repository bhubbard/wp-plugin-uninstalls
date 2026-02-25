-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voteiu_dbversion', 'voteiu_skin', 'voteiu_allowownvote', 'voteiu_aftervotetext', 'voteiu_votetext', 'voteiu_sinktext', 'voteiu_allowguests', 'voteiu_widgetcount', 'voteiu_initialoffset', 'voteiu_limit', 'voteiu_autoinsert', 'voteiu_allowsinks', 'voteiu_excluded', 'voteiu_usevotetext', 'widget_MostVotedAllTime');

