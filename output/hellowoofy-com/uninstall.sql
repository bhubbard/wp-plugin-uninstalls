-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mws_google_analytic_id', 'mws_enable', 'mws_select_page', 'mws_select_position', 'mws_default_webstory_icon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('story_meta', 'mws_webstory_pages', '_source_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('story_meta', 'mws_webstory_pages', '_source_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('story_meta', 'mws_webstory_pages', '_source_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('story_meta', 'mws_webstory_pages', '_source_url');

