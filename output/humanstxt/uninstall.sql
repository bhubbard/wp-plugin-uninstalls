-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'humanstxt_options', 'humanstxt_content', 'humanstxt_revisions', 'humanstxt_plugin_information');

