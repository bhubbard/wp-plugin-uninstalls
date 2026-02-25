-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aet_turn_on', 'aet_block_manually_added_tags', 'aet_examine_post_title', 'aet_examine_post_content', 'aet_filter_by_category', 'aet_clean_uninstall', 'aet_included_categories', 'aet_automatic_tagging_included_categories', 'aet_automatic_tagging');

