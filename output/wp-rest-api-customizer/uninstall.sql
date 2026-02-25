-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wprac_img_url', 'wprac_allow_comments', 'wprac_url-to-id', 'onemorethubf', 'wprac_unset_id', 'wprac_unset_title', 'wprac_unset_content', 'wprac_unset_date_gmt', 'wprac_unset_guid', 'wprac_unset_date', 'wprac_unset_modified', 'wprac_unset_modified_gmt', 'wprac_unset_slug', 'wprac_unset_status', 'wprac_unset_type', 'wprac_unset_link', 'wprac_unset_excerpt', 'wprac_unset_author', 'wprac_unset_featured_media', 'wprac_unset_comment_status', 'wprac_unset_ping_status', 'wprac_unset_sticky', 'wprac_unset_template', 'wprac_unset_format', 'wprac_unset_meta', 'wprac_unset_categories', 'wprac_unset_tags');

