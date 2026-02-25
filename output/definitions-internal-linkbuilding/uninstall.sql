-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rspdef_activation_time', 'rspdef_tour_shown_once', 'rspdef_tour_started', 'rspdef_review_notice_shown', 'rspdef_definitions_count', 'rspdef_found_in_posts_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rspdef_sorted_metaboxes', 'definition_link_type', 'definition_disable_image', 'used_definitions');
DELETE FROM wp_usermeta WHERE meta_key IN ('rspdef_sorted_metaboxes', 'definition_link_type', 'definition_disable_image', 'used_definitions');
DELETE FROM wp_termmeta WHERE meta_key IN ('rspdef_sorted_metaboxes', 'definition_link_type', 'definition_disable_image', 'used_definitions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rspdef_sorted_metaboxes', 'definition_link_type', 'definition_disable_image', 'used_definitions');

