-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bbp_voting_log', 'bbp_voting_score', 'bbp_voting_ups', 'bbp_voting_downs', 'bbp_voting_votes', 'bbp_voting_forum_enable_topics', 'bbp_voting_forum_enable_replies', 'bbp_voting_weighted_score', 'bbp_voting_trending_score', 'sort_bbpress_topics_by_votes_on_forum', 'sort_bbpress_replies_by_votes_on_forum');
DELETE FROM wp_usermeta WHERE meta_key IN ('bbp_voting_log', 'bbp_voting_score', 'bbp_voting_ups', 'bbp_voting_downs', 'bbp_voting_votes', 'bbp_voting_forum_enable_topics', 'bbp_voting_forum_enable_replies', 'bbp_voting_weighted_score', 'bbp_voting_trending_score', 'sort_bbpress_topics_by_votes_on_forum', 'sort_bbpress_replies_by_votes_on_forum');
DELETE FROM wp_termmeta WHERE meta_key IN ('bbp_voting_log', 'bbp_voting_score', 'bbp_voting_ups', 'bbp_voting_downs', 'bbp_voting_votes', 'bbp_voting_forum_enable_topics', 'bbp_voting_forum_enable_replies', 'bbp_voting_weighted_score', 'bbp_voting_trending_score', 'sort_bbpress_topics_by_votes_on_forum', 'sort_bbpress_replies_by_votes_on_forum');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bbp_voting_log', 'bbp_voting_score', 'bbp_voting_ups', 'bbp_voting_downs', 'bbp_voting_votes', 'bbp_voting_forum_enable_topics', 'bbp_voting_forum_enable_replies', 'bbp_voting_weighted_score', 'bbp_voting_trending_score', 'sort_bbpress_topics_by_votes_on_forum', 'sort_bbpress_replies_by_votes_on_forum');

