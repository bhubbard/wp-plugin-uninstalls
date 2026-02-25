-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ampify_is_active', 'ampify_project_id', 'ampify_include_urls', 'ampify_exclude_urls');

