-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ris_related_post_related_by', 'ris_related_post_number_of_posts', 'ris_related_post_display_layout');

