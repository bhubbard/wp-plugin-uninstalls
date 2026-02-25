-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_iceable_bbp_close_old_topics', '_iceable_bbp_hard_close_old_topics', '_iceable_bbp_close_old_topics_age');

