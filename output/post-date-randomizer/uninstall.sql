-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdr_date1', 'pdr_date2', 'pdr_randomize_posts', 'pdr_randomize_comments', 'pdr_post_type', 'pdr_set_modified_date', 'pdr_randomize_notice');

